// SPDX-License-Identifier: MIT

pragma solidity 0.8.7;

import "@chainlink/contracts/src/v0.8/ChainlinkClient.sol";

contract HappyHoliday is ChainlinkClient {
    using Chainlink for Chainlink.Request;

    bytes32 public totalRainJobId;
    uint256 public totalRain;
    uint256 public fee;

    event TotalRain(uint256 _result);

    uint256 public constant DECIMALS = 10**18;
    uint256 public insuredValue;
    uint256 public premium;

    constructor(
        address _link,
        address _oracle,
        bytes32 _totalRainJobId,
        uint256 _fee
    ) {
        setChainlinkToken(_link);
        setChainlinkOracle(_oracle);
        totalRainJobId = _totalRainJobId;
        fee = _fee;
    }

    function requestTotalRain(string memory _from, string memory _to) external {
        Chainlink.Request memory req = buildChainlinkRequest(
            totalRainJobId,
            address(this),
            this.fulfillTotalRain.selector
        );
        req.add("dateFrom", _from);
        req.add("dateTo", _to);
        req.add("method", "SUM");
        req.add("column", "prcp");
        sendChainlinkRequest(req, fee);
    }

    function fulfillTotalRain(bytes32 _requestId, uint256 _result)
        external
        recordChainlinkFulfillment(_requestId)
    {
        totalRain = _result;
        emit TotalRain(_result);
    }

    function setInsuredValue(uint256 value) external {
        insuredValue = value * DECIMALS;
        premium = insuredValue / 100;
    }
}
