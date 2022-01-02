// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

//there are two ways to call a contructor
//order of initialization

contract S {

    string public name;

    constructor(string memory _name){
        name = _name;
    }
}

contract T {
    string public text;

    constructor(string memory _text){
        text = _text;
    }
}

//first way to initialize a contructor with parameters
contract U is T("T"), S("S") {
    
}

//second way to initialize a constructor with paRmeters
contract V is T, S{
    constructor(string memory _name, string memory _text) T(_name) S(_text){

    }
}

//third way to initialize a constructor with paRmeters which is a combination of both first and second
contract VV is T("T"), S{
    constructor(string memory _text) S(_text){
        
    }
}