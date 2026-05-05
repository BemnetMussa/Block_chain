// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Escrow {
    // The depositor who funds the escrow
    address public depositor;

    // The beneficiary who will receive the funds
    address public beneficiary;

    // The arbiter who can approve the release
    address public arbiter;
}
