// SPDX-License-Identifier: GPL-3.0

// 매핑.

pragma solidity >=0.7.0 <0.9.0;

contract MappingExample {

    mapping (address => string) private accountOwner;       // 함수 바깥에서 정의한다.

    // 짝 추가.
    function addOwner(address _address, string memory _name) public {
        accountOwner[_address] = _name;
    }

    // 짝 조회.
    function getOwner(address _address) public view returns (string memory) {
        return accountOwner[_address];
    }

    // 짝 삭제.
    function removeOwner(address _address) public {
        delete(accountOwner[_address]);
   //  delete accountOwner[_address];
    }
}
