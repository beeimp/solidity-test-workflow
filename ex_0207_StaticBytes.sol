 // SPDX-License-Identifier: GPL-3.0

// 정적 바이트 배열.

pragma solidity >=0.7.0 <0.9.0;

 contract StaticBytes {

    bytes5 storageBytes5 = "Hello";      // Storage 정적 바이트 배열.
    bytes3 storageBytes3 = 0xaabbcc;   // Storage 정적 바이트 배열.

    function testBytes() public returns (bytes1) {

        storageBytes3 = "Bad";             // 이미 정의된 storage 배열 내용 바꾸기.
    //    storageBytes3[2] = "D";          // 인덱싱하여 대입 불가능. 부분적 변경 불가능.

        bytes2 localBytes2;                  // Memory 키워드 필요 없다. 
        localBytes2 = 0xffff;                 // 정적 local 바이트 배열 채워 넣기.
     //   localBytes2 = "a";                  // 정적 local 바이트 배열 다시 채워 넣기 가능. 
        bytes3 localBytes3 = 0xabcdff;   // 정적 local 바이트 배열 초기화 가능!   
        localBytes3 = localBytes2;       // 큰 배열은 작은 배열을 받을 수 있다.         
	      
     //   localBytes3[1] = 0x11;          // 인덱싱하여 대입 불가능. 부분적 변경 불가능.

        return localBytes3[0];           // 인덱싱하여 읽는 것은 가능.
    }
}