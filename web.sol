// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract MyToken {
    string public tokname = "Cryptic";
    uint public toksupply;
    string public tokabbv = "CRY";

    mapping(address => uint) public balances;

    // Mint function
    function minttok(address tokaddress, uint value) public {
        require(value > 0, "Value must be greater than zero");
        toksupply += value;
        balances[tokaddress] += value;
    }

    // Burn function
    function tokburn(address tokaddress, uint value) public {
        require(balances[tokaddress] >= value, "Insufficient balance to burn");
        balances[tokaddress] -= value;
        toksupply -= value;
    }
}
