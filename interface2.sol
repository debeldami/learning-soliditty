// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract B{
    uint counter;

    function getCounter () view public returns(uint){
        return counter;
    }

    function incCounter () public {
         counter++;
    }
}