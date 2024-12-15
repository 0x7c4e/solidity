// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract LocalVariables {
    // Local variables are only used inside a function. 
    // They exist temporarily in memory and are discarded after the function execution ends.

    // EXAMPLE:
    // We declare a state variable here.
    uint public total;

    // This function calculates the sum of two numbers and updates the state variable `total`.
    function calculateTotal(uint a, uint b) public {
        // Local variable `sum` is used for temporary computation.
        uint sum = a + b;

        // Update the state variable `total` with the computed value of `sum`.
        total = sum;
    }

    // When we deploy this contract, `total` is initially 0 (default value for uint).
    // After calling `calculateTotal` with specific values for `a` and `b`,
    // the value of `total` will persistently store the result of `a + b`.
}
