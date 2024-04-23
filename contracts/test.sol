// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PalindromeChecker {
    // Function to check if a string is a palindrome
    function isPalindrome(string memory str) public pure returns (bool) {
        bytes memory strBytes = bytes(str);
        uint256 length = strBytes.length;
        for (uint256 i = 0; i < length / 2; i++) {
            if (strBytes[i] != strBytes[length - i - 1]) {
                return false;
            }
        }
        return true;
    }
}
