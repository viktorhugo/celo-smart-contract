// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract CeloSc {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function greet(string memory name) public pure returns (string memory) {
        return string(abi.encodePacked("Hello, ", name, "!"));
    }
}