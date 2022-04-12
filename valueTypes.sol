// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.7;

contract ValueTypes{
    //value and reference type
    bool public isFalse = true //boolean can either be true or false
    uint public val; //uint == uint256 has a value from 0 => 2^256 - 1
                     //uint8 has a value from 0 => 2^8 - 1
                     //uint16 has a value from 0 => 2^16 - 1
    int public iVal; //int == int256 has a value from -2^256 => 2^256 - 1
    int public maxInt = type(int).max; //get the max value of int variable
    int public minInt = type(int).min; //get the min value of int variable
    address public addr = 0xC257274276a4E539741Ca11b590B9447B26A8051; //type address
    bytes32 public b32 = 0x61a410e8228b9bda4cddcac02c60974e2071df62d501fa6c5067dadb9c4be97a; //mainly used for cryptographic hash function keccak 256 
}