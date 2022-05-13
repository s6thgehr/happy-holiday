// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import "@chainlink/contracts/src/v0.8/ChainlinkClient.sol";
import "@chainlink/contracts/src/v0.8/ConfirmedOwner.sol";

contract HappyHoliday is ChainlinkClient, ConfirmedOwner {
    using Chainlink for Chainlink.Request;

    uint256 private constant ORACLE_PAYMENT = 0 * LINK_DIVISIBILITY;
    uint256 public currentPercipitation;
    address private _oracle = 0x9904415Db0B70fDd242b6Fe835d2bBc155466e8e;
    bytes32 private _jobId = "69cf5186b05a4497be74f85236e8ba34";

    event RequestPercipitationFulfilled(
        bytes32 indexed requestId,
        uint256 indexed price
    );

    constructor() ConfirmedOwner(msg.sender) {
        setPublicChainlinkToken();
    }

    function requestPercipitation() public onlyOwner {
        Chainlink.Request memory req = buildChainlinkRequest(
            _jobId,
            address(this),
            this.fulfillPercipitation.selector
        );
        req.add(
            "get",
            "https://dataservice.accuweather.com/currentconditions/v1/178556?apikey=QkYJm5wAyNcQj2hiGekh7ObX8YopTsb2&details=true"
        );
        req.add("path", "0,PrecipitationSummary,Past24Hours,Metric,Value");
        req.addInt("times", 1000);
        sendChainlinkRequestTo(_oracle, req, ORACLE_PAYMENT);
    }

    function fulfillPercipitation(bytes32 _requestId, uint256 _Percipitation)
        public
        recordChainlinkFulfillment(_requestId)
    {
        emit RequestPercipitationFulfilled(_requestId, _Percipitation);
        currentPercipitation = _Percipitation;
    }

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
