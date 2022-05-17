// SPDX-License-Identifier: GPL-3.0

// 구조체 예시 2.

pragma solidity >=0.7.0 <0.9.0;

contract StructExample1 {

    struct CarType{
        string name;
        string model;
        address owner;
        uint price;
    }

    CarType[] private cars;                 // Storage 배열.

    function addCar(string memory _name, string memory _model, address _owner, uint _price) public returns (bool) {
        CarType memory newCar;		// 한시적으로 사용하는 변수.
        newCar.name = _name;
        newCar.model = _model;
        newCar.owner = _owner;
        newCar.price = _price;
        cars.push(newCar);			// 배열에 새로운 원소를 넣는다.
    return true;
    }

    function getCar(uint _i) public view returns(string memory, string memory, address, uint){
        CarType memory myCar = cars[_i];
        return (myCar.name, myCar.model, myCar.owner, myCar.price);
    }

    function getCar_(uint _i) public view returns(CarType memory){
        return cars[_i];
    }
}