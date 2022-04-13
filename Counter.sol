// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

//a simple solidity application that increment and decrement a variable on the blockchain.
//is it useful? absolutely not.

contract Counter{
    uint public count;

    function increment() external{
        count = count + 1;
    }

    function decremnt() external{
        count = count - 1;
    }
}