// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract BuiltInV{
    address sender = msg.sender;
    uint val = msg.value;
    uint date = block.timestamp;
}