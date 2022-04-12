// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract sol{
    struct User {
        string name;
        uint id;
    }

    User[] public user;

    //recieve paramenter for the user name
    //increment id from the length of the array

    function create(string memory name) public{
        user.push(User(name, user.length +1));
    }

    function read(uint id) public view returns(string memory userName, uint userId){
        userName = user[id].name;
        userId = user[id].id;
    }

    function update ()public{

    }

    function remove() public{

    }
}