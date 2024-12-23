// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract FunctionOutputs {
    // we use the returns() keyword to make a function return multiple outputs
    function returnMany() public pure returns (uint, bool) {
        return (1, true);
    }

    function named() public pure returns (uint x, bool b) {
        return (1, true);
    }

    function assigned() public pure returns (uint x, bool b) {
        x = 1;
        b = true;
    }

    // we use destructuring assignments to extract the variable being returned from another function 
    function destructuringAssignments() public pure {
        (uint x, bool b) = returnMany();
        // we can omit the first variable assuming we only need the second, but we'll still need the comma
        (, bool _b) = returnMany();
    }
    
}