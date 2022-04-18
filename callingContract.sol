// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract A{

    address Bcontract;

    function setContractAddr(address _addr) public {
        Bcontract = _addr;
    } 

    function callHelloWorld() view public returns(string memory) {
        B b = B(Bcontract);

        return b.helloWorld();
    }     
}

contract B{
    function helloWorld() public pure returns(string memory){
        return "Hello smartcontract world"; 
    }
}