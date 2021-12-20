// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract FunctionOuput{
    function returnMany() public pure returns(uint, bool){
        return (1, true);
    }

    function returnNamed() public pure returns(uint x, bool y){
        return (1, true);
    }

    function returnAssigned() public pure returns(uint x, bool y){
        x = 1;
        y = true;
    }

    function destructuringAss() public pure{
        (uint x, bool y) = returnMany();
        (, bool b) = returnMany();
        x;
        y;
        b;
    }
}