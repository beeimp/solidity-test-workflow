// SPDX-License-Identifier: GPL-3.0

// DelegateCall 예시.

pragma solidity >=0.7.0 <0.9.0;

// 호출을 받는 함수가 들어있는 계약 V1.
contract ReceiverV1 {
    uint public accumulator = 0;                // 앞으로 변화가 없을 것.
    function doSomething(uint256 _x) public  {
        accumulator += _x;
    } 
}

// 호출을 받는 함수가 들어있는 계약 V2.
contract ReceiverV2 {
    uint public accumulator = 0;                // 앞으로 변화가 없을 것.
    function doSomething(uint256 _x) public  {
        accumulator += 2*_x;
    } 
}

// 호출하는 함수가 들어있는 계약.
contract Caller {
    uint public accumulator = 0;                 // 앞으로 변화가 있을 것.                                       // Reciever의 state 변수와 같은 이름!

    event returnCall(bytes _dataOutput);

    function callTest(address _contract, uint256 _x) public {
        (bool result, bytes memory dataOutput) = _contract.delegatecall(
            abi.encodeWithSignature("doSomething(uint256)", _x)    // 타계약의 함수를 호출하는 표준 방법.
        );
        require(result, "Call function failed");                               // Call 성공 여부.
        emit returnCall(dataOutput);			        // 반환값 출력.
    } 
}