pragma solidity 0.8.13;

contract Ternary{
    function ternary(uint input) public returns(bool){
        return input < 256 ? true : false;
    }
}