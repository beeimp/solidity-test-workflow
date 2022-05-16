// SPDX-License-Identifier: GPL-3.0

// 기초 자료형.

pragma solidity ^0.8.13;

contract DataTypes {
  
    // 양의 정수.
    uint8 public u8 = 11;
    uint16 public u16 = 456;
    uint32 public u32 = 12345;
    uint public u256 = 123;                           // uint 는 uint256와 같다.
    uint public minUint8 = type(uint8).min;         // uint8의 최소값.
    uint public maxUint8 = type(uint8).max;         // uint8의 최대값.  
    uint public res1 = u8 + u16;                    // implicit 변환.
    uint24 public u24 = uint24(u256);               // explicit 변환.

    // 정수.
    int8 public i8 = -1;                    
    int public i256 = 456;                          // int는 int256과 같다.
    int public minInt8 = type(int8).min;            // int8의 최소값.
    int public maxInt8 = type(int8).max;            // int8의 최대값.  

    // 부울.
    bool public YesNo = true;
    bool public b1 = true;
    bool public b2 = false;
    bool public res2 = b1 && b2;                  // 연산.
    bool public res3 = b1 || b2;                     // 연산.
    bool public res4 = !b1;                          // 연산.

    // 주소.
    address public addr1 = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    address payable public addr2 = payable(addr1);   // payable()로 explicit 변환!

    // 기본값.
    bool public defaultBool;       // 기본값 = false
    uint public defaultUint;       // 기본값 = 0
    int public defaultInt;         // 기본값 = 0
    address public defaultAddress; // 기본값 = 0x0000000000000000000000000000000000000000
}