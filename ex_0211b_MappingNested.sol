// SPDX-License-Identifier: GPL-3.0

// 매핑의 value가 또다른 매핑.

pragma solidity >=0.7.0 <0.9.0;

contract MappingNested {
    
    mapping(address => mapping(uint => string)) private accountOwners;

    // 짝 추가.
    function addOwner(address _address, uint _i, string memory _name) public {
        accountOwners[_address][_i] = _name;
    }

    // 짝 조회.
    function getOwner(address _address, uint _i) public view returns (string memory) {
        return accountOwners[_address][_i];
    }

    // 짝 삭제.
    function removeOwner(address _address, uint _i) public {
        delete(accountOwners[_address][_i]);
    }

}