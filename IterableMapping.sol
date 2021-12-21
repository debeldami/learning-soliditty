// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.10;

contract IterableMapping{
    mapping(address => uint) public balances;
    mapping(address => bool) public inserted;
    address[] public addr;

    function set(address _key, uint _val) external{
        balances[_key] = _val;

        if(inserted[_key]){
            inserted[_key] = true;
            addr.push(_key);
        }
        
    }

    function getMapSize() external view returns(uint size){
        size = addr.length;
    }

    function getFirst() external view returns(uint first){
        first = balances[addr[0]];
    }

    function getLast() external view returns(uint last){
        last = balances[addr[addr.length - 1]];
    }
}