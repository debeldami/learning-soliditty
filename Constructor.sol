// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

//contructors are only called ones when a contract is deployed
contract Constructor{
    uint public x;
    address public owner;

    constructor(uint _x){
        owner = msg.sender;
        x = _x;
    }
}