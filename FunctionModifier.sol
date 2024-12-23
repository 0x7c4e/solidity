// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

// FUNCTION MODIFIERS - allow us to reuse code

contract FunctionModifier {
    bool public paused;
    uint public count;

    // we use setpause to pause the inc and dec functions, so when is paused they wont run
    // we are reusing the require() methods inside both inc and dec, we can make it easier with function modifiers

    function setPause(bool _paused) external {
        paused = _paused;
    }

    modifier whenNotPaused() {
        // the _; tells solidityto call the function that is wrapped that is the require() function, when the modifier (wrapper) is called.
        require(!paused, "paused");
        _;
    }

    // we append the modifier to the inc and dec functions
    function inc() external whenNotPaused {
        count += 1;
    }

    function dec() external whenNotPaused {
        count -= 1;
    }

    // function modifiers can also take in input
    // we create a function that takes in an input and increments count by the number of the input
    // the input must be less thatn 100 hoewver

    modifier validateIncBy(uint _x) {
        require(_x < 100, "x >= 100");
        _;
    }

    // we pass in an input to the validateincby modifier, we also pass in the whennotpaused modifier to this function.
    function incBy(uint _x) external whenNotPaused validateIncBy(_x) {
        count += _x;
    }

    // we can use modifiers to sandwich a function, that is we execute one part of the modifier, then call the main function, before executing the remaining part of the modifier
    modifier sandwich() {
        // first part
        count += 10;
        _;
        // second part
        count *= 2;
    }

    function foo() external sandwich {
        count += 1;
    }
}