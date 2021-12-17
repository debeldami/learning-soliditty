// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

//three ways to handle error in solidity
//require:
//revert:
//assert:
// gas refund and state updates are reverted after any error
//custom errors save gas fee

contract Error{
    
    function testRequireError(uint _i) public pure{
        require(_i <= 10, "i less than 10");
    }

    function testRevertError(uint _i) public pure{
        if(_i > 10){
            revert("i greater than 10");
            //revert is mainly use in the context of a loop
        }
      
    }

    uint public num = 123;

    function testAssertError() public view{
      assert(num == 123);
      //assert is use to check for condition that should always be true 
    }

    error MyError(address caller, uint i);

    function testCustError(uint _i) public view{
      //custom error can only be use with revert
      if(_i > 10){
            revert MyError(msg.sender, _i);
        }
    }
}