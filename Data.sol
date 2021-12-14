// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract DataTypes {
    bool public b = true;
    uint public u = 123;
                        //uint8 from 0 to 2**8-1
                        //uint16 from 0 to 2**16-1
                        //...
                        //uint256 from 0 to 2**256-1
                        //uint are for positive numbers
                        //unint is by default uint256
    int public i = -123;
                        //int are for both negative and positive numbers
                        //int is from -2**255 to 2**255-1

    int public maxi = type(int).min; //to get the minimum number in int
    int public mini = type(int).max; //to get the maximum number in int
    address public addr = 0x9907A0cF64Ec9Fbf6Ed8FD4971090DE88222a9aC;
    bytes32 public b32 = 0x7465737400000000000000000000000000000000000000000000000000000000;

}