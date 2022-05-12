// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.13;

contract StateLocal{
    string name = "BeeImp";  // state variable
    uint age = 26;           // state variable

    function getRsult() public pure returns (uint) {
        uint a = 11;        // local variable
        uint b = 22;        // local variable
        uint res = a + b;   // local variable
        return res;
    }

}