// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

// there are 3 ways to handle errors in solidity, require, revert, and assert
// when an error occurs 2 things happen:
// gas is refunded, and state varriables that were updated are reverted
// we can also use custom errors which saves gas

contract Error {
    // REQUIRE - its mostly used to validate input, and for access control to a function
    function testRequire(uint256 _i) public pure {
        // we pass in the condition to check, followed by the error message
        // here we require if to be less than or equal to 10, if its more than we give an error
        require(_i <= 10, "i is greater than 10");
    }

    // REVERT
    function testRevert(uint256 _i) public pure {
        // revert and require do the same thing, but revert is a better option if there are several/nested conditions
        if (_i > 10) {
            revert("i is greater than 10");
        }
    }

    // ASSERT - is used to check that a condition is true, if its not then there might be a bug in the contract
    uint256 public num = 123;

    // we declare a state variable whose value isnt updated anywhere, so it will always be the same
    // we can use 'assert' to verify that the state variable is always 123
    function testAssert() public view {
        assert(num == 123);
    }

    // state variables that were updated before an error was thrown will be reverted,
    function foo(uint256 _i) public {
        // here the state variable 'num' is updated, we then check if the input is less than 10 with require, if its not an error is thrown, and the the update that was made to 'num' is reverted.
        num += 1;
        require(_i < 10);
    }

    // CUSTOM ERRORS
    // custom errors save gas, instead of using require and passing an error message. The longer the error message the more gas cost

    // first we create the custom error
    error MyError(address caller, uint256 i);

    function testCustomError(uint256 _i) public view {
        // custom errors can only be used with revert
        if (_i > 10) {
            // we pass in the caler's address and the function input
            revert MyError(msg.sender, _i);
        }
    }
}
