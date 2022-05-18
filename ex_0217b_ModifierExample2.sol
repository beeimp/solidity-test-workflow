// SPDX-License-Identifier: GPL-3.0

// Modifier 예시 2.

pragma solidity >=0.7.0 <0.9.0;

contract ModifierExample2 { 

    // 허락된 사람만 호출 가능.
    address private allowed;
    modifier allowedOnly {
        if (msg.sender == allowed ) {
            _;             // 이후 함수 실행.
        } else {
            revert();    // 실행 취소.
        }
    }

    constructor ()  {           // 생성자 함수.
        allowed = msg.sender;   // allowed = 계약을 전개한 사함.
    }

    function testAllowed() public view allowedOnly returns (string memory){
        return "Hello!";
    }

    // 계약이 전개된 후 1분간 호출 가능.
    uint private endTime = block.timestamp + 1 minutes;	// 전개 후 1분.
    modifier timeOut {    // 외부 인자를 받지 않는 modifier.
        if (block.timestamp < endTime ) {
            _;            	// 이 위치에서 함수 실행.
        } else {
            revert();	// 실행 취소.
        }
    }

    function testTimeout() public view timeOut timeOut timeOut returns (uint){
        uint untilTimeout = endTime - block.timestamp; 
        return untilTimeout;
    }

}