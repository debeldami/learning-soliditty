// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.10;

contract ArrayShift{
    uint[] public arr;

    function optimizedRemoved(uint _i) public{
        arr[_i] = arr[arr.length - 1];
        arr.pop();
    }

    function test() public{
        arr = [1,2,3,4,5];
        optimizedRemoved(2);
    }
}