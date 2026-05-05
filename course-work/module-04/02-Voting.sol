// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Voting {
    struct Proposal {
        address target;
        bytes data;
        uint yesCount;
        uint noCount;
    }

    Proposal[] public proposals;
    mapping(uint => mapping(address => bool)) public votes;
    mapping(uint => mapping(address => bool)) public hasVoted;

    function newProposal(address target, bytes calldata data) external {
        proposals.push(Proposal(target, data, 0, 0));
    }

    function castVote(uint proposalId, bool supportsProposal) external {
        Proposal storage proposal = proposals[proposalId];

        if (hasVoted[proposalId][msg.sender]) {
            bool previousVote = votes[proposalId][msg.sender];

            if (previousVote) {
                proposal.yesCount--;
            } else {
                proposal.noCount--;
            }
        } else {
            hasVoted[proposalId][msg.sender] = true;
        }

        votes[proposalId][msg.sender] = supportsProposal;

        if (supportsProposal) {
            proposal.yesCount++;
        } else {
            proposal.noCount++;
        }
    }
}
