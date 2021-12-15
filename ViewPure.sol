// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

//The difference between view and pure function, is that view can read data from the blockchain
//while pure cannot read or modify data from the blockchain

contract ViewPure{

    uint public num;

    function fView () external view returns (uint){
        return num;
    }
    function fPure () external pure returns (uint){
        return 1;
    }
}