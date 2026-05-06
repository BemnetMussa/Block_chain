// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    struct User {
        uint256 balance;
        bool isActive;
    }

    mapping(address => bool) public members;
    mapping(address => User) public users;

    function addMember(address account) external {
        members[account] = true;
    }

    function isMember(address account) external view returns (bool) {
        return members[account];
    }

    function removeMember(address account) external {
        members[account] = false;
    }

    function createUser() external {
        require(!users[msg.sender].isActive, "User already active");
        users[msg.sender] = User({balance: 100, isActive: true});
    }
}
