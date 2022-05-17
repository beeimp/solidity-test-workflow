// SPDX-License-Identifier: GPL-3.0

// 구조체 예시 1.

pragma solidity >=0.7.0 <0.9.0;

contract StructExample1 {

    struct Customer {
        string name;
        uint256 amount;

    }

    Customer[] public customers;

    function addCustomer(string memory _name, uint256 _amount) public {
        customers.push(Customer(_name, _amount));
    }

}