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

    function read(uint uid) public view returns(string memory userName){
        
        for(uint i = 0; i < user.length; i++){
            if(user[i].id == uid){
                userName = user[uid].name;
            }
        }
    }

    function update (uint id, string memory userName) public{
        user[id].name = userName;
    }

    function remove() public{
        for(uint i = 0; i < user.length; i++){
            if(user[i].id == uid){
                userName = user[uid].name;
            }
        }
    }
}