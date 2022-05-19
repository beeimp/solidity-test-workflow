// SPDX-License-Identifier: GPL-3.0

// Fallback Payable 함수 예시.

pragma solidity >=0.7.0 <0.9.0;

contract FallbackPayable {
    event Received(address _from, address _this, uint _amount);

    // Receive 함수 대신에 fallback payable 함수.
    // Compile에서 warning이 발생하지만 error는 아니기 때문에 무시한다.
    // 송금하려면, 금액을 Value 에 넣고, Remix IDE의 [Transact] 버튼을 누른다. 
    fallback () external payable {                                        
        emit Received(msg.sender, address(this), msg.value);	   // 입금 잘 받았음을 로그에 남겨둔다!
    }

    function getBalance() public view returns (uint _balance) {
        _balance = address(this).balance;
    }
}
