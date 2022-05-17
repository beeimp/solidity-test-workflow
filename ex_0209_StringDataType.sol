// SPDX-License-Identifier: GPL-3.0

// 문자열.

pragma solidity >=0.7.0 <0.9.0;

contract StringDataType {

    function compareStrings(string memory _myString1, string memory _myString2) public pure returns (bool) {
        bool res = keccak256(bytes(_myString1)) == keccak256(bytes(_myString2));
        // bool res = sha256(bytes(_myString1)) == sha256(bytes(_myString2));
        return res;
    }
}