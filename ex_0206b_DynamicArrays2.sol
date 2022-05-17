// SPDX-License-Identifier: GPL-3.0

// 동적 배열 2.

pragma solidity >=0.7.0 <0.9.0;

contract DynamicArrays2 {
    // Storage Dynamic 배열.
    int8[] storageInt8Array;	            // 동적 배열. Storage가 기본.
    bool[] storageBoolArray;	    // 동적 배열. Storage가 기본.

    function testArrays() public returns (uint8[] memory) {
        storageBoolArray = new bool[](5);        // 이미 선언된 storage 동적 배열에 저장공간 할당.
        storageInt8Array = [int8(1),2,3];	     // 이미 선언된 storage 동적 배열 채워 넣기. 첫 번째 원소는 explicit 변환한다.
     //  storageInt8Array = new int8[](10);      // 이미 정의된 storage 동적 배열에 저장공간 재할당 가능!
        uint8[] memory memoryUint8Array;         // Local 동적 배열은 memory에 저장 필수!
        int8[] memory memoryInt8Array;           // 또다른 local 동적 배열. Memory에 저장 필수!
     // uint[] memory memoryIntArray = [uint(1),2,3];   // 이것은 불가능. 오류 발생!

        memoryUint8Array = new uint8[](5);     // 이미 선언된 memory 동적 배열에 저장공간 할당.
        memoryInt8Array = new int8[](5);       // 이미 선언된 memory 동적 배열에 저장공간 할당.
      //   memoryInt8Array = new int8[](7);    // Memory 배열에 저장공간 재 할당 가능!

        storageBoolArray.push(true);           // Storage 동적 배열에는 push/pop OK.
      // memoryInt8Array.push(int(1));              // 오류 발생! Memory 동적 배열에는 push/pop 불가능.
      // memoryInt8Array.length = 6;           // 오류 발생! length는 읽기만 가능.

        memoryUint8Array[0] = 111;             // OK.
        memoryInt8Array[1] = 88;               // OK.

        return memoryUint8Array;
    }
}