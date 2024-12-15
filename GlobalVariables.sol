// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

// Global variables in Solidity are built-in variables that provide information about the blockchain and the current transaction context. 
// These variables are always accessible, and you don't need to declare them. 
// They are used to access metadata like the current block number, the sender of a transaction, the gas price, and more.

contract GlobalVariables {
    function globalvars() external view returns (address, uint, uint) {
        // address is the data type of msg.sender, we store the global var 'msg.sender' in a local var 'sender'
        // msg.sender is the address of the account or contract that called the function
        address sender = msg.sender;
        // block.timestamp shows the time the function was called
        uint timestamp = block.timestamp;
        // stores the current block numnber
        uint blockNum = block.number;

        return (sender, timestamp, blockNum);
    }
}