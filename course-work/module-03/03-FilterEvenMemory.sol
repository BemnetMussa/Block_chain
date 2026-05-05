// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    function filterEven(uint256[] calldata numbers) external pure returns (uint256[] memory) {
        uint256 evenCount = 0;

        for (uint256 i = 0; i < numbers.length; i++) {
            if (numbers[i] % 2 == 0) {
                evenCount++;
            }
        }

        uint256[] memory evenNumbers = new uint256[](evenCount);
        uint256 j = 0;

        for (uint256 i = 0; i < numbers.length; i++) {
            if (numbers[i] % 2 == 0) {
                evenNumbers[j] = numbers[i];
                j++;
            }
        }

        return evenNumbers;
    }
}
