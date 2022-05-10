// SPDX-License-Identifier: MIT

pragma solidity 0.8.7;

contract HappyHoliday {
    uint256 public constant DECIMALS = 10**18;
    uint256 public insuredValue;
    uint256 public premium;

    function setInsuredValue(uint256 value) external {
        insuredValue = value * DECIMALS;
        premium = insuredValue / 100;
    }
}
