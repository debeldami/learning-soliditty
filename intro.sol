// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

//intoduction to smart contract syntax
contract Intro{
//fixed size type
bool isReady; //boolean
uint a; //positive integers
address recipient; //address
bytes32 data; //abitary binary data

//variable size type
string name;
bytes _data;
uint[] amounts;
mapping(uint => string) users;

//user defined type

struct User{
    uint userId;
    string name;
    string[] friends;
}
}

