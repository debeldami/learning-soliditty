// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract TodoList {
    struct Todo{
        string item;
        bool comp;
    }

    Todo[] public todo;

    function create(string calldata _text) external {
        todo.push(Todo(_text, false));
    }

    function update(uint _index, string calldata _text) public {
        todo[_index].item = _text;
    }

    function read(uint _index) external view returns(string memory, bool){
        Todo memory todoList = todo[_index];

        return(todoList.item, todoList.comp);
    }

    function completed(uint _index) external {
        Todo storage todoList = todo[_index];

        todoList.comp = !todoList.comp;
    }
}