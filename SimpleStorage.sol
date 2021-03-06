// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.10;

contract SimpleStore{
    string public text;

    function set(string calldata _text) external {
        text= _text;
    }

    function get() external view returns(string memory){
        return text;
    }
}