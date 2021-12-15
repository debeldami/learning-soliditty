// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract GlobalVar{
    //global variables stores information such as blockchain transaction and the account
    //calls the contracts

    function globalVar() external view returns (address,uint, uint){
        
        address sender = msg.sender;
        uint timeStamp = block.timestamp;
        uint blockNum = block.number;

        return (sender, timeStamp, blockNum);
    }
}