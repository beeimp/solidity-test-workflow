// SPDX-License-Identifier: GPL-3.0

// Hash 함수와 Selfdestruct 예시.

pragma solidity >=0.7.0 <0.9.0;

contract HashSelfdestructExample {

    function hashTest1 (string memory _text) public pure returns (bytes32) {
        return keccak256(bytes(_text));                 // Bytes 형으로 먼저 변환되어야 한다.
    }

    function hashTest2 (string memory _text) public pure returns (bytes32) {
        return keccak256(abi.encodePacked(_text));      // Bytes 형으로 먼저 변환되어야 한다.
    }

    function hashTest3 (string memory _text, uint _value, bool _logic) public pure returns (bytes32) {
        return keccak256(abi.encodePacked(_text, _value, _logic));      // 한가지 이상의 자료를 패킹해 넣을 수 있다.
    }

    function hashTest4 (string memory _text, uint _value, bool _logic) public pure returns (bytes32) {
        return sha256(abi.encodePacked(_text, _value, _logic));          // 다른 해시 함수 사용.   
    }

    function hashTest5 (string memory _text, uint _value, bool _logic) public pure returns (bytes20) {
        return ripemd160(abi.encodePacked(_text, _value, _logic));          // 다른 해시 함수 사용.   
    }

    function theEnd(address payable _address) public payable {        // 계약의 폐기!!! 
        selfdestruct(_address);
    }

    // 입금 확인 event.
    event Received(address _from, address _this, uint _amount);

    // 송금하려면, 금액을 Value에 넣고, Remix IDE의 [Transact] 버튼을 누른다. 
    receive () external payable {
        emit Received(msg.sender, address(this), msg.value);	// 입금 잘 받았음을 로그에 남겨둔다!
    }
}