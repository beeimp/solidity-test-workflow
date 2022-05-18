// SPDX-License-Identifier: GPL-3.0

// Modifier 예시 1.

pragma solidity >=0.7.0 <0.9.0;

contract ModifierExample1 { 

    // 성인인 경우에만 호출 가능.
    modifier isAdult (uint _age) {
        require( _age >=  20, "Not an adult!");        // 20세 미만이면 실행 중지.
        _;                                                        // 나머지 함수 실행.
    }

    function canDrink (uint _age) isAdult(_age) public pure returns (bool) {
        return true;
    }

    // 함수 실행전에 state 변수 초기화 해주는 역할.
    uint private x = 0;
    modifier wrapper {
        x = 10;                      // 먼저 x = 10으로 설정.
        _;                             // 나머지 함수 실행.
    }

    function testWrapper() public wrapper returns (uint) {
        return x;
    }

}