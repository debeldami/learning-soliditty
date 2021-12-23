// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.10;

contract Structs {

    struct Car {
        string name;
        uint model;
        address owner;
    }

    Car public car;
    Car[] public cars;

    mapping(address => Car[]) public newCars;

    function examples() external {
        //three ways to initialize struct
        Car memory toyota = Car("toyota", 1234, msg.sender);

        Car memory lambo = Car({name: "lamboghini", model: 2020, owner: msg.sender});

        Car memory tesla; //name: "", model: 0, owner: zero address
        tesla.name = "tesla";
        tesla.model = 2021;
        tesla.owner = msg.sender;

        cars.push(toyota);
        cars.push(lambo);
        cars.push(tesla);

        cars.push(Car("ferari", 2019, msg.sender));

        Car storage _car = cars[0];

        _car.model = 1995;
    } 
}