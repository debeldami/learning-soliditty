// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.13;

contract Ternary{
    function ternary(uint input) public pure returns(bool){
        return input < 256 ? true : false;
    }
}