// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

contract HelloWorld {
    string public greet = "Hello Everynyan!";

    uint catnumber = 3;

    event CatEcho(string msg, uint value);

    function setCat(uint catnum) public{
        catnumber = catnum;
        emit CatEcho("Number set to ", catnumber);
    }

    function requireCat(uint catnum) public view {
        require(catnum == catnumber, "Nope, not same.");
    }

    function assertCat(uint catnum) public view {
        assert(catnum == catnumber);
    }

    function revertCat(uint catnum) public view {
        if (catnum == catnumber) {
            revert("Nope, not same. Revert.");
        }
    }
}
