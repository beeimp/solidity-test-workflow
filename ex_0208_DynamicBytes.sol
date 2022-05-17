// SPDX-License-Identifier: GPL-3.0

// 동적 바이트 배열.

pragma solidity >=0.7.0 <0.9.0;

contract DynamicBytes {
    
    bytes storageBytesA;	                 // Storage 동적 바이트 배열.
    bytes storageBytesB = "Greetings!";      // Storage 동적 바이트 배열 초기화 가능.

    function testArrays() public returns (bytes memory) {
        storageBytesA =  "Hello World!";    // 이미 선언된 storage 동적 바이트 배열에 값을 넣는다.
	
        bytes memory memoryBytesA;                // Local 바이트 배열은 memory에 저장 필수!
    //    bytes memory memoryBytesB = 0x11223344;   // Memory 바이트 배열은 초기화 불가능.

        memoryBytesA = new bytes(10);       // 저장 공간 확보.

        storageBytesA.push(0x01);             // Storage 동적 바이트 배열에는 push 가능.
        storageBytesA.pop();                  // Storage 동적 바이트 배열에는 pop 가능. 
     //   delete storageBytesA[2];            // Storage 동적 바이트 배열의 원소는 delete 가능.
     
     //   memoryBytesA.push(0x01);           // 오류 발생! Memory 동적 바이트 배열에는 push/pop 불가능.
     //   memoryBytesA.length = 6;           // 오류 발생! length는 읽기만 가능.
        
        memoryBytesA[0] = "B";              // OK.
        memoryBytesA[1] = 0x22;             // OK.
     //   delete memoryBytesA[1];           // Memory 동적 바이트 배열의 원소는 delete 가능.

        return storageBytesA;
    }
}