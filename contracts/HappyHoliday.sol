// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import "@chainlink/contracts/src/v0.8/ChainlinkClient.sol";
import "@chainlink/contracts/src/v0.8/ConfirmedOwner.sol";

contract HappyHoliday is ChainlinkClient, ConfirmedOwner {
    using Chainlink for Chainlink.Request;

    // uint256 private constant ORACLE_PAYMENT = 0 * LINK_DIVISIBILITY;
    // uint256 public currentPercipitation;
    // address private _oracle = 0x9904415Db0B70fDd242b6Fe835d2bBc155466e8e;
    // bytes32 private _jobId = "69cf5186b05a4497be74f85236e8ba34";

    bytes32 public weatherJobId;
    uint256 public rainPast24h;
    uint256 public fee;

    event RequestRainFulfilled(bytes32 indexed requestId, uint256 indexed rain);

    constructor(
        address _link,
        address _oracle,
        bytes32 _weatherJobId,
        uint256 _fee
    ) ConfirmedOwner(msg.sender) {
        setChainlinkToken(_link);
        setChainlinkOracle(_oracle);
        weatherJobId = _weatherJobId;
        fee = _fee;
    }

    function requestRainPast24h() public onlyOwner {
        Chainlink.Request memory req = buildChainlinkRequest(
            weatherJobId,
            address(this),
            this.fulfillRainPast24h.selector
        );
        req.add(
            "get",
            "https://dataservice.accuweather.com/currentconditions/v1/178556?apikey=QkYJm5wAyNcQj2hiGekh7ObX8YopTsb2&details=true"
        );
        req.add("path", "0,PrecipitationSummary,Past24Hours,Metric,Value");
        req.addInt("times", 1000);
        sendChainlinkRequest(req, fee);
    }

    function fulfillRainPast24h(bytes32 _requestId, uint256 _rainPast24h)
        public
        recordChainlinkFulfillment(_requestId)
    {
        emit RequestRainFulfilled(_requestId, _rainPast24h);
        rainPast24h = _rainPast24h;
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
