
// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

contract HelloWorld {
    string public greet = "Hello Everynyan!";

    function requireCat(string arginput) external {
        require(arginput == "Cat" || arginput == "cat", "That's not a cat /ᐠ_ ꞈ _ᐟ\");
    }

    function assertCat(uint arginput) external {
        assert(arginput == "Cat" || arginput == "cat");
    }

    function revertCat(uint arginput) external {
        if (arginput == "Cat" || arginput == "cat") {
            revert("That wasn't a cat! Reverting... /ᐠ_ ꞈ _ᐟ\");
        }
    }
}
