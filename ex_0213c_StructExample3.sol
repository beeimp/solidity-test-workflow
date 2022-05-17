// SPDX-License-Identifier: GPL-3.0

// 구조체 예시 3.

pragma solidity >=0.7.0 <0.9.0;

contract StructExample3 {

    struct CarType{
        string name;
        string model;
        address owner;
        uint price;
    }

    mapping(uint8 => CarType) private cars;         // Storage 매핑.
    uint8 private nCars = 0;

    function addCar(string memory _name, string memory _model, address _owner, uint _price) public returns (bool) {
        CarType memory newCar = createCar(_name, _model, _owner, _price);
        cars[nCars++] = newCar;		// 매핑에 새로운 짝을 넣는다.
    return true;
    }

    function createCar(string memory _name, string memory _model, address _owner, uint _price) private pure returns (CarType memory) {
        return CarType(_name, _model, _owner, _price);
    }

    function getCar(uint8 _i) public view returns(string memory, string memory, address, uint){
        CarType memory myCar = cars[_i];
        return (myCar.name, myCar.model, myCar.owner, myCar.price);
    }

    function getCar_(uint8 _i) public view returns(CarType memory){
        return cars[_i];
    }
}