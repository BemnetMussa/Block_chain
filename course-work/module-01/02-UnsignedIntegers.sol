// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    // 1. Define a as a uint8 with a value between 0 and 255
    uint8 public a = 250;
    
    // 2. Define b as a uint16 with a value of at least 256
    uint16 public b = 1000;
    
    // 3. Define sum as a uint256 which is the sum of a and b
    uint256 public sum = a + b;
}
