// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    function sum(uint256[5] calldata nums) external pure returns (uint256) {
        uint256 s = 0;
        for (uint i = 0; i < nums.length; i++) {
            s += nums[i];
        }
        return s;
    }
}
