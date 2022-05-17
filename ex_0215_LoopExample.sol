// SPDX-License-Identifier: GPL-3.0

// 반복문 예시.

pragma solidity >=0.7.0 <0.9.0;

contract LoopExample {

    // n 까지 누적해 주는 함수를 다양한 방법으로 구현해 본다.

    // for 반복문. 
    function sum1 (uint _n ) public pure returns (uint){
        uint res = 0;
        for(uint i = 1; i <= _n; i++){
            res += i;
        }
        return res;
    }

    // while 반복문. 
    function sum2 (uint _n ) public pure returns (uint){
        uint res = 0;
        uint i = 1;
        while (i <= _n){
            res += i++;
        }
        return res;
    }

    
    // do~while 반복문. 
    function sum3 (uint _n ) public pure returns (uint){
        uint res = 0;
        uint i = 1;
        do {
            res += i++;
        } while (i <= _n);
        return res;
    }
    
}