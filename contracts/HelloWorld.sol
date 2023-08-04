// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

contract HelloWorld {
    string public greet = "Hello Everynyan!";
    uint catnumber = 3;

    event catEcho(string msg, uint catnumber);

    function setCat(uint catnum) public{
        catnumber = catnum;
        emit catEcho("catnumber is now ", catnumber);
    }

    function requireCat(uint catnum) public {
        require(catnum == catnumber, "Nope, not same.");
        emit catEcho("catnumber is indeed ", catnumber);
    }

    function assertCat(uint catnum) public {
        assert(catnum == catnumber);
        emit catEcho("catnumber is indeed ", catnumber);
    }

    function revertCat(uint catnum) public {
        if (catnum != catnumber) {
            revert("Nope, not same. Revert.");
        }
        else {
        emit catEcho("catnumber is indeed ", catnumber);            
        }
    }
}
