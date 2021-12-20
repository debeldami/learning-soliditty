// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract Array{
    //dynamic Array
    uint[] public nums = [1,2,3];
    uint[3] public numsFixed = [1,2,3];

    function examples() public{
        nums.push(4); //[1,2,3,4]
        uint x = nums[1];
        nums[2] = x; //[1,2,2,4]
        delete nums[2]; //[1,2,0,4] when you use the delete keyword in an array it set it value to the default value of the variable in that index
        nums.pop(); //[1,2,0]
        nums.length; //3

        //creating an array in memory
        uint[] memory a = new uint[](3); //array in memory must be of a fixed size

        a[1] = 12;
    }

    function returnArray() public view returns(uint[] memory){
        return nums;
    }
}