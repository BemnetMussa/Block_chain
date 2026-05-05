// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

error NotEnoughEther();

contract Contract {
    constructor() payable {
        if(msg.value == 0) {
            revert NotEnoughEther();
        }
    }
}
