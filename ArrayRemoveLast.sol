// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract ArrayRemoveLast {
    uint256[] public arr;

    // using the remove() method from arrayshift isnt gas efficient,
    // by replacing the element to remove with the last element and popping the last element we save gas
    function remove(uint256 _index) public {
        // replace the element to remove with the last element
        arr[_index] = arr[arr.length - 1];
        // pop the last element off
        arr.pop();
    }

    function test() external {
        arr = [1, 2, 3, 4];
        remove(1);

        assert(arr.length == 3);
        assert(arr[0] == 1);
        assert(arr[1] == 4);
        assert(arr[2] == 3);

        remove(2);
        assert(arr.length == 2);
        assert(arr[0] == 1);
        assert(arr[1] == 4);
    }
}
