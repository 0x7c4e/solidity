// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

// ownable allows users claim ownership of a contract
contract Ownable {
    // only the owner can add a new owner
    // only the owner can call some functions
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    // modifier to validate owner status
    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner, permission denied");
        _;
    }

    // function to create new owner
    function setOwner(address _newOwner) external onlyOwner {
        require(_newOwner != address(0), "invalid address");
        owner = _newOwner;
    }

    function anyoneCanCall() public {
        // ijsa
    }

    function onlyOwnerCanCall() public onlyOwner {
        // ijijj
    }
}