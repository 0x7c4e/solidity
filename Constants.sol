// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

// 361 gas
contract Constants {
    // state variables whose values are not going to change are declared as constants
    // we declare constat variables in uppercase
    // declaring them as constants saves gas
    address public constant MY_ADDRESS = 0xCdadAf88e64F913648925C89B62346a036Da0863;
    uint public constant MY_NUM = 8;
}

// 2483 gas
contract Var {
        address public  MY_ADDRESS = 0xCdadAf88e64F913648925C89B62346a036Da0863;
 
}