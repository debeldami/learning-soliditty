// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.13;

contract Voting{
    
    struct Proposal {
        uint id;
        string proposalTitle;
        string proposalDescription;
        uint totalVote;
        uint positiveVote;
    }

    mapping(uint => mapping(address => bool)) votedAddress;

    Proposal[] proposal;

    function createPropsal (string memory title, string memory desc) public{
        require((keccak256(abi.encodePacked((title))) != keccak256(abi.encodePacked(("")))), "empty title not allowed");
        require((keccak256(abi.encodePacked((desc))) != keccak256(abi.encodePacked(("")))), "empty description not allowed");

        proposal.push(Proposal(proposal.length + 1, title, desc, 0, 0));
    }   

    function castVote(uint _ip, bool voteYes) public{

        require(proposal.length < _ip, "no such improvements proposal");

        if(votedAddress[_ip][msg.sender]){
            revert("user already voted");
        }else{
            proposal[_ip].totalVote +=1;
            if(voteYes){
                proposal[_ip].positiveVote +=1;
            }
        }

        votedAddress[_ip][msg.sender] = true;
    }

    function getVote(uint _ip) public view returns(uint totalVote, uint positiveVote){
        totalVote = proposal[_ip].totalVote;
        positiveVote = proposal[_ip].positiveVote;
    }
}