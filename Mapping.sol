// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;


// mapping is like a dictionary, it allows for quick easy lookup
contract Mapping {
    // to create a map we name the key type to the value type
    // this mapping will represent a balance of each address
    mapping(address => uint) public balances;
    // nested mapping
    // this mapping checks if an address is a friend of another address
    // it maps from one address to another map of an address and boolean
    mapping(address => mapping(address=> bool)) public isFriend;

    // set key to a value
    function examples() external {
        // set the balance '123' to the function caller
        balances[msg.sender] = 123;
        // get the balance of the function caller and ssign to a variable 'bal'
        uint bal = balances[msg.sender];
        // we can also get the balance of an address we havent set yet
        // since we havent set the balance of address 1 it returns the default value
        uint bal2 = balances[address(1)];

        // add amout to the balance of an address
        balances[msg.sender] += 456;

        // delete balance
        delete balances[msg.sender];
    }

}
