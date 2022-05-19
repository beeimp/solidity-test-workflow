// SPDX-License-Identifier: GPL-3.0

// 생성자 함수 예시.

pragma solidity >=0.7.0 <0.9.0;

contract ConstructorExample{
    string private name;
    uint256 private age;
    constructor (string memory _name, uint256 _age){	    // Remix에서 인자 입력 후 전개!
        name = _name;
        age = _age;
    }

    function getVariables() public view returns (string memory, uint256) {
        return (name, age);			// 두 개의 반환값.
    }
}