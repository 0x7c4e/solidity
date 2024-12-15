// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract Statevariables {
    // state variables store data on the blockchain.
    // They are declared inside a contract and outisde a function
    uint256 public myUint = 123;

    function foo() external pure {
        // uint256 notStatevar = 456;
    }
}
