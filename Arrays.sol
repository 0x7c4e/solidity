// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract Array {
    // we can create a dynamic array, meaning its size can change
    uint[] public nums = [1,2,3];
    // a fixed sized array's size cannot be changes
    uint[3] public numsFixed = [4, 5, 6];

    function examples() external  {
        // add item o the end of an array
        nums.push(4); 
        // get the value at an index
        uint x = nums[1];
        // update the value at an index
        nums[2] = 777;
        // delete the element at an index, the size of the array isnt shrinked
        delete nums[1];
        // to shrink it we can use pop
        nums.pop();
        // get array length
        uint len = nums.length;

        // create an array in memory
        // 5 is the size of the array, arrays created in memory must be specified a size and cannot be changed
        uint[] memory a = new uint[](5);
    }
}