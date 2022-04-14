// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.13;

contract Voting{

     mapping(uint => mapping(address => bool)) vote;
     
     mapping(uint => address[]) votedAddress;

     string[] proposal;

     function makeProposal(string calldata prop) public{

        require((keccak256(abi.encodePacked((prop))) != keccak256(abi.encodePacked(("")))), "give a valid proposal");

         proposal.push(prop);
     }

     function castVote(uint ip, bool voteFor) public {

         require((keccak256(abi.encodePacked((proposal[ip]))) != keccak256(abi.encodePacked(("")))), "no such proposal");
         require(proposal.length <= ip, "no such proposal");

         vote[ip][msg.sender] = voteFor;
         votedAddress[ip].push(msg.sender);
     }

     function voteResult(uint ip) public view returns(uint positiveResult, uint totalVoter ){
    
         totalVoter = votedAddress[ip].length;

         for(uint i = 0; i < totalVoter; i++){
             if(vote[ip][votedAddress[ip][i]]){
                 positiveResult += 1;
             }
         }
     }
}