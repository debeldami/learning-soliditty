// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.10;

contract DataLocation{
    struct MyStruct{
        uint foo;
        string text;
    }

    mapping(address => MyStruct) public myStructs;

    function example(uint[] calldata y, string calldata x) external returns(uint[] memory){
        myStructs[msg.sender] = MyStruct(123, "bar");

        MyStruct storage myStruct = myStructs[msg.sender];
        myStruct.foo = 456;

        MyStruct memory readOnly = myStructs[msg.sender];
        readOnly.foo = 456;

        uint[] memory newArr = new uint[](3);
        newArr[0] = 123;
        x;
        _internal(y);

        return newArr;
    }

    function _internal(uint[] calldata y) private pure {
        uint x = y[0];
        x;
    }
}