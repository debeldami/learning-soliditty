// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.10;

contract A{

    function a() public pure virtual returns(string memory){
        return "A";
    }

    function a1() public pure virtual returns(string memory){
        return "A";
    }

    function a2() public pure  returns(string memory){
        return "A";
    }
}

contract B is A{
    function a() public pure override returns(string memory){
        return "B";
    }

    function a1() public pure virtual override returns(string memory){
        return "B";
    }
}

contract C is B{
    function a1() public pure override returns(string memory){
        return "C";
    }
}