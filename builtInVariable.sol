// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract BuiltInV{
    address sender = msg.sender; //the person sending the transaction
    uint val = msg.value; //contain the value of ether in the contract call
    uint date = block.timestamp; //contain time from the genesis block of etheruem
}