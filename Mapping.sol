// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract Mapping{

    mapping(address => uint) public balances;
    mapping(address => mapping(address => bool)) public isFriends;

    function examples() public{

        balances[msg.sender] = 123;

        delete balances[msg.sender]; //0
        
        //updating mapping
        balances[msg.sender] = 456;

        //updating but adding to previous value
        balances[msg.sender] += 456;

        isFriends[msg.sender][address(this)] = true;
    }
}