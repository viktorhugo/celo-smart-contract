// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import "forge-std/Test.sol";
import  { CeloSc } from "../src/CeloSc.sol";

contract CeloScTest is Test {
    
    CeloSc public celoSc;

    function setUp() public {
        celoSc = new CeloSc();
    }

    function testGreet() public {
        string memory output = celoSc.greet("Alice");
        assertEq(output, "Hello, Alice!");
    }
}
