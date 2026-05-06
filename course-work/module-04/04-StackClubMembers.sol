// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract StackClub {
    address[] public members;

    constructor() {
        members.push(msg.sender);
    }

    modifier onlyMember() {
        require(isMember(msg.sender), "Must be member");
        _;
    }

    function addMember(address newMember) external onlyMember {
        members.push(newMember);
    }

    function removeLastMember() external onlyMember {
        require(members.length > 0, "No members");
        members.pop();
    }

    function isMember(address account) public view returns (bool) {
        for (uint256 i = 0; i < members.length; i++) {
            if (members[i] == account) {
                return true;
            }
        }
        return false;
    }
}
