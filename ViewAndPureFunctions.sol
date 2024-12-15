// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract ViewAndPureFuncs {
    // view functions can read data from the blockchain
    // pure functions do not read data from the blockchain

    uint public num;

    // view fun because it reads data 'num' from the blockchain/contract
    function viewFunc() external view returns (uint) {
        return num;
    }

// PURE FUNC BECAUSE IT DOES NOT READ ANY DATA FROM THE BLOCKCHAIN
    function pureFunc() external pure returns(uint) {
        return 7;
    }

// READS 'NUM' SO ITS A VIEW FUNC
    function addToNum(uint x) public view returns(uint) {
        return num + x;
    }

    function addNums(uint x, uint y) public pure returns (uint) {
        return x + y;
    }
}