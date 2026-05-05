// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    address public owner;
    uint256 public a;
    uint256 public b;
    uint256 public c;

    constructor() payable {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner!");
        _;
    }

    function setA(uint256 _val) public onlyOwner {
        a = _val;
    }

    function setB(uint256 _val) public onlyOwner {
        b = _val;
    }

    function setC(uint256 _val) public onlyOwner {
        c = _val;
    }
}
