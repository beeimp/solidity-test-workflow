// SPDX-License-Identifier: GPL-3.0

// 계정의 Balance.

pragma solidity ^0.8.13;

contract AddressBalance {
    address public owner;
    uint ownerBalance;

    // 계정 주소를 받아서 기록하고 잔고를 반환해 주는 함수.
    function showBalance(address _address) public returns (uint) {
         owner = _address;
         ownerBalance = owner.balance;
         return ownerBalance;
    }
}