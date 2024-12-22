// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

// there are 3 ways to handle errors in solidity, require, revert, and assert
// when an error occurs 2 things happen:
// gas is refunded, and state varriables that were updated are reverted
// we can also use custom errors which saves gas

contract Error {
    
}