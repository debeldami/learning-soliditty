// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.10;

contract Enum{
    enum Status{
        none,
        pending,
        shipped,
        completed,
        rejected,
        canceled 
    }

    Status public status;

    struct Order {
        address buyer;
        Status status;
    }

    //returning an enum
    function returnEnum() external view returns(Status){
        return status;
    } 

    //updating an enum
    function updateEnum(Status _status) external {
        status = _status;
    } 

    function ship() external{
        status = Status.shipped;
    }

    function reset() external{
        delete status; //reset to none
    }
}