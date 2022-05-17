// SPDX-License-Identifier: GPL-3.0

// 문자열과 바이트형.

pragma solidity >=0.7.0 <0.9.0;

contract String2Bytes {
    string myString = "Ethereum";                  // Storage에 저장되는 string.

    function getLength(string memory _name) public pure returns (uint _length){
        bytes memory temp = bytes(_name);     // string을 bytes로 변환.
        _length = temp.length;                       // 반환될 길이.
    }

    function getElementAt(uint _i) view public returns (bytes1 _letter){
        bytes memory temp = bytes(myString);  // string을 bytes로 변환.
        _letter = temp[_i];                                     // 반환될 문자 (byte1).
    }

    function getElementAt_(uint _i) view public returns (string memory _letter){
        bytes memory temp = bytes(myString);  // string을 bytes로 변환.
        _letter = string (abi.encodePacked(temp[_i]));         // 반환될 문자 (string).
    }
}
