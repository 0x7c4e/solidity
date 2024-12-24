// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

// structs aloow us group data

contract structs {
    // car struct delcaration
    struct Car{
        string model;
        uint year;
        address owner;
    }

    // create a new car
    Car public car;
    // array of cars
    Car[] public cars;
    // map of owner to cars
    mapping (address => Car[]) public carsByOwner;

    function examples() external {
        // initializing a structs
        // first way, define the parameters in order
        Car memory toyota = Car("toyota", 2014, msg.sender);
        // second way, state the key and values, the order doesnt matter
        Car memory lambo = Car({
            model: "Lambo",
            year: 2017,
            owner: msg.sender
        });
        // third way
        Car memory tesla;
        tesla.model = "Tesla";
        tesla.year = 2023;
        tesla.owner = msg.sender;

        // move the 3 cars we created into the cars array
        cars.push(toyota);
        cars.push(lambo);
        cars.push(tesla);

        cars.push(Car("Ferrari", 2020, msg.sender)); // we did everything in one line

        // retrieve data of a car struct from the cars array
        Car storage _car = cars[0];
        _car.model;
        _car.year;
        _car.owner;

        // update data
        _car.year = 2024;

        // delete (reset) the field in the struct
        delete _car.owner;

        // we can delete an entire struct(reset the value of all fields
        delete cars[1]; //delete the car strut in index 1

    }

}