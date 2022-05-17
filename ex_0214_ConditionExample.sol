// SPDX-License-Identifier: GPL-3.0

// 조건문 예시.

pragma solidity >=0.7.0 <0.9.0;

contract ConditionExample {
    function isAdult (uint8 _age ) public pure returns (string memory){
        if (_age <= 8 ) {
            return "Child";
        } else if ( _age > 8 && _age <=19 ) {
            return "Student";
        } else {
            return "Adult";
        }
    }

    function isHotToday (int8 _temperature ) public pure returns (string memory) {
        string memory res;
        res = (_temperature > 28) ? "It's hot!" : "It's not hot.";          // 삼항 연산자 사용.
        return res;
    }

}