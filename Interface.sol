// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

interface IB {
    function getCounter () view external returns(uint);
    function incCounter () external;
}

contract A{

    uint public getCount;

    function callHelloWorld(address addr) public {
        IB(addr).incCounter();
        getCount = IB(addr).getCounter();
    }     
}

//interface IB is gotten from interface2.sol
