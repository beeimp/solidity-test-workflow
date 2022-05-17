// SPDX-License-Identifier: GPL-3.0

// 동적 배열 1.

pragma solidity >=0.7.0 <0.9.0;

contract DynamicArrays1 {
    // Storage Dynamic 배열.
    uint[] public arr1 = [1, 2, 3];     // 초기값이 있는 동적 배열. 초기값 대입은 storage 배열이라 가능함.
    uint[] public arr2;                   // 빈 동적 배열.

    // 배열의 원소 반환.
    function getElement(uint i) public view returns (uint) {
        return arr1[i];
    }

    // 배열을 통채로 반환.
    // 배열을 함수의 인자 또는 반환값으로 사용될 때에는 memory 키워드를 붙여 주어야 한다.
    function getArray() public view returns (uint[] memory) {  
        return arr1;
    }

    // Dynamic 배열에 원소를 넣어서 확장 한다.
    function push(uint x) public {
        arr1.push(x);
    }

    // Dynamic 배열의 마지막 원소를 꺼집어 낸다.
    function pop() public returns (uint) {
        uint last = arr1[arr1.length-1];
        arr1.pop();             // 마지막 값을 반환하지 않고 그냥 버린다.
        return last;
    }

    // 배열의 길이.
    function getLength() public view returns (uint) {
        return arr1.length;
    }

    // 원소 삭제.
    // 삭제된 자리에는 0이 들어간다. 배열의 길이는 그대로 유지된다.
    function removeElement(uint i) public {
        delete arr1[i];
    }

}