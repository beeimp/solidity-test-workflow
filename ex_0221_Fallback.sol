// SPDX-License-Identifier: GPL-3.0

// Fallback 함수 예시.

// Fallback 계약과 TestContract 계약을 차례대로 deploy 한 후 테스트 해본다. 

pragma solidity >=0.7.0 <0.9.0;

contract Fallback {
    uint public fallbackCount = 0;

    fallback() external {                // 없는 함수가 호출되면 처리해 주는 함수.
        fallbackCount++;
    }
}


contract TestContract {
    event returnCall(bytes _dataOutput);

    function callTest(address _contract) public {
        (bool result, bytes memory dataOutput) = _contract.call(
            abi.encodeWithSignature("wrongFunction()")           // 다른 계약에 없는 함수를 호출해 본다. 타계약의 함수를 호출하는 표준 방법.
        );
        require(result, "Call function failed");	                    // Call 성공 여부.
        emit returnCall(dataOutput);			            // 반환값 출력.
    } 
}