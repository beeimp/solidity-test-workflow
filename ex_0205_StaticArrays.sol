 // SPDX-License-Identifier: GPL-3.0

// 정적 배열.

pragma solidity >=0.7.0 <0.9.0;

 contract StaticArrays {

    int[3] storageIntArray = [int(1), 2];        // 일부 초기값이 있는 정적 배열.
    bool[5] storageBoolArray;                    // 초기값 없는 정적 배열.

    function testArrays() public returns (bool[2] memory) {

        storageBoolArray = [true, true, true, false, false];   // 이미 선언된 storage 배열 채워 넣기.

        uint[2] memory memoryUintArray;           // 함수 안에서 선언된 배열의 저장 장소는 memory 이다. 
        memoryUintArray = [uint(1), 2];               // 정적 memory 배열 채워 넣기.
        bool[2] memory memoryBoolArray = [true, false];     // 정적 memory 배열 초기화 가능.            
	      
        memoryUintArray[0] = 0;       // OK.
        memoryUintArray[1] = 1;       // OK.

        return memoryBoolArray;
    }
}
