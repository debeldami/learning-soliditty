// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract LocalVar{
    uint public i;
    bool public b;
    address public myAddress;
    
    function foo() external {
        uint x = 123;
        bool f = false;
        //some code

        x += 456;
        f = true;

        i += 4;
        b = true;
        myAddress = address(1);
    }
}