// SPDX-License-Identifier: GPL-3.0

// Global 변수.

pragma solidity ^0.8.13;

contract GlobalVariables {
    uint public blockTimestamp = block.timestamp;
    bytes public msgData = msg.data;
    address public msgSender = msg.sender;              // 계약 생성시 설정되고 바뀌지 않음. 
    bytes4 public msgSig = msg.sig;
    uint public msgValue = msg.value;
    address public txOrigin = tx.origin;                // 계약 생성시 설정되고 바뀌지 않음.
}