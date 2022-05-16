// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import "@chainlink/contracts/src/v0.8/ChainlinkClient.sol";
import "@chainlink/contracts/src/v0.8/ConfirmedOwner.sol";
import "@chainlink/contracts/src/v0.8/KeeperCompatible.sol";

contract HappyHoliday is
    ChainlinkClient,
    ConfirmedOwner,
    KeeperCompatibleInterface
{
    using Chainlink for Chainlink.Request;

    bytes32 public rainJobId;
    bytes32 public locationJobId;
    uint256 public fee;
    int256 constant rainMultiplier = 1000;

    uint256 public rainPast24h;
    uint256 public locationKey;

    uint256 public constant interval = 86400; // One day intervall
    uint256 public lastTimeStamp;

    uint256 public policyId;

    enum PolicyStatus {
        CREATED, // Policy is subscribed
        RUNNING, // Policy cover is started
        COMPLETED, // Policy cover is fin6ished without claim
        CLAIMED, // Policy is claimed, waiting for pay out
        PAIDOUT // Claim is paid out
    }

    struct Policy {
        uint256 id;
        address payable beneficiary;
        uint256 locationKey;
        uint256 startDate;
        uint256 endDate;
        uint256 insuredValue;
        uint256 premium;
        uint256 rainTreshold;
        uint8 incidentsTreshold;
        uint8 incidents;
    }

    mapping(uint256 => address) policyIdToBuyer;
    mapping(address => uint256) buyerPolicyCount; // Number of policies someone bought

    Policy[] public policies;

    event RequestRainFulfilled(bytes32 indexed requestId, uint256 indexed rain);
    event RequestLocationFulfilled(
        bytes32 indexed requestId,
        uint256 indexed key
    );
    event PolicySubscription(address indexed beneficiary, uint256 indexed id);

    constructor(
        address _link,
        address _oracle,
        bytes32 _rainJobId,
        bytes32 _locationJobId,
        uint256 _fee
    ) ConfirmedOwner(msg.sender) {
        setChainlinkToken(_link);
        setChainlinkOracle(_oracle);
        rainJobId = _rainJobId;
        locationJobId = _locationJobId;
        fee = _fee;
        lastTimeStamp = block.timestamp;
    }

    function balanceOf(address _buyer) public view returns (uint256 _balance) {
        return buyerPolicyCount[_buyer];
    }

    function buyerOf(uint256 _policyId) public view returns (address _buyer) {
        return policyIdToBuyer[_policyId];
    }

    function getPoliciesByBuyer(address _buyer)
        external
        view
        returns (Policy[] memory)
    {
        Policy[] memory result = new Policy[](buyerPolicyCount[_buyer]);
        uint256 counter = 0;
        for (uint256 i = 0; i < policies.length; i++) {
            if (policyIdToBuyer[policies[i].id] == _buyer) {
                result[counter] = policies[i];
                counter++;
            }
        }
        return result;
    }

    function subscribePolicy(
        uint256 _startDate,
        uint256 _endDate,
        uint256 _insuredValue,
        uint256 _premium,
        uint8 _incidentsTreshold
    ) public payable {
        require(_premium == msg.value, "You have to pay the exact Premium");

        uint256 _rainThreshold = uint256(50 * rainMultiplier); // 50 mm rain

        // Get locationKey: _locationKey
        uint256 _locationKey = 0;

        Policy memory policy = Policy({
            id: policyId,
            beneficiary: payable(msg.sender),
            locationKey: _locationKey,
            startDate: _startDate,
            endDate: _endDate,
            insuredValue: _insuredValue,
            premium: _premium,
            rainTreshold: _rainThreshold,
            incidentsTreshold: _incidentsTreshold,
            incidents: 0
        });

        policyIdToBuyer[policyId] = msg.sender;
        buyerPolicyCount[msg.sender]++;
        policies.push(policy);

        emit PolicySubscription(msg.sender, policyId);
        policyId++;
    }

    /**********  REQUEST ORACLE DATA **********/
    function requestLocationKey(string memory url) public onlyOwner {
        Chainlink.Request memory req = buildChainlinkRequest(
            locationJobId,
            address(this),
            this.fulfillLocationKey.selector
        );
        req.add("get", url);
        req.add("path", "Key");
        req.addInt("times", 1);
        sendChainlinkRequest(req, fee);
    }

    function fulfillLocationKey(bytes32 _requestId, uint256 _locationKey)
        public
        recordChainlinkFulfillment(_requestId)
    {
        emit RequestLocationFulfilled(_requestId, _locationKey);
        locationKey = _locationKey;
    }

    function requestRainPast24h(string memory url) public onlyOwner {
        Chainlink.Request memory req = buildChainlinkRequest(
            rainJobId,
            address(this),
            this.fulfillRainPast24h.selector
        );
        req.add("get", url);
        req.add("path", "0,PrecipitationSummary,Past24Hours,Metric,Value");
        req.addInt("times", rainMultiplier);
        sendChainlinkRequest(req, fee);
    }

    function fulfillRainPast24h(bytes32 _requestId, uint256 _rainPast24h)
        public
        recordChainlinkFulfillment(_requestId)
    {
        emit RequestRainFulfilled(_requestId, _rainPast24h);
        rainPast24h = _rainPast24h;
    }

    /**********  CHAINLINK KEEPER FUNCTIONS **********/
    function checkUpkeep(
        bytes calldata /* checkData */
    )
        external
        view
        override
        returns (
            bool upkeepNeeded,
            bytes memory /* performData */
        )
    {
        upkeepNeeded = (block.timestamp - lastTimeStamp) > interval;
    }

    function performUpkeep(
        bytes calldata /* performData */
    ) external override {
        if ((block.timestamp - lastTimeStamp) > interval) {
            lastTimeStamp = block.timestamp;
            // Check for every policy the rain data for the day
        }
    }

    /**********  HELPER FUNCTIONS **********/
    function stringToBytes32(string memory source)
        private
        pure
        returns (bytes32 result)
    {
        bytes memory tempEmptyStringTest = bytes(source);
        if (tempEmptyStringTest.length == 0) {
            return 0x0;
        }

        assembly {
            // solhint-disable-line no-inline-assembly
            result := mload(add(source, 32))
        }
    }
}
