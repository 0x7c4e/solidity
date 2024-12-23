// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

// constructors are functions that are only called once when a contract is deployed
// they are mostly used to initialize a state variable
contract Constructor {
    address public owner;
    uint public x;

    // unlike reguar functions, constructors are only called once, when we deploy the contract
    constructor(uint _x) {
        // we are intiiaizing the owner state to the account that deployed the contract
        owner = msg.sender;
         x = _x;
    }
}