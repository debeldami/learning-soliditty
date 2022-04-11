// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract SplitPayment{

    //recieve the address to split the payment 
    //recieve the values to send to each address
    //check the number of recipient equal the number of splitted payment
    //calculate the total amount to be sent
    /*check the amount(msg.value) sent to the contract is more or equals to 
    the specified total amount*/
    //send payments  

    function splitPayment(address payable[] calldata recipient, uint[] calldata amount) external payable {

        require(recipient.length == amount.length, "please the same number of address and amount");

        uint totalAmount;

        for(uint i = 0; i < amount.length; i++){
            totalAmount += amount[i];
        }

        require(msg.value >= totalAmount, "Insufficient balance");

        for(uint i = 0; i < recipient.length; i++){
            recipient[i].transfer(amount[i]);
        }

    }
}