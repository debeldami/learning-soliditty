// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract StateVar {
// there are three types of variables, local variable, public variable and state variable.
//state variable are variable that stores values on the blockchain, they declared inside the 
//contract and outside a function

 uint public stateVar = 123;

 function foo() external pure {
     uint notStateVar = 456;
     //variable declared inside a function are reffered to local variables
 }
}