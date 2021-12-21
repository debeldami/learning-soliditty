// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract ArrayShift{
    uint[] public a;

    function deletItem() public {
        a = [1,2,3];
        delete a[1]; //[1,0,3]
    }

    function removeItem(uint _index) public {
        require(_index < a.length, "index out of bound");

        for(uint i = _index; i < a.length - 1; i++){
            a[i] = a[i + 1];      
        }
          a.pop();  
    }

    function test() external {
        a = [1, 2, 3, 4, 5];
        removeItem(2);     
    }
}