// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.10;

contract DataLocation{
    struct MyStruct{
        uint foo;
        string text;
    }

    mapping(address => MyStruct) public myStructs;

    function example() external{
        myStructs[msg.sender] = MyStruct(123, "bar");

        MyStruct storage myStruct = myStructs[msg.sender];
        myStruct.foo = 456;

        MyStruct memory readOnly = myStructs[msg.sender];
        readOnly.foo = 456;
    }
}