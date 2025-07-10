// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import  { CeloSc } from "../src/CeloSc.sol";

contract DeployCeloSc is Script {
    function run() external {
        // initialize broadcasting
        vm.startBroadcast();
        // deploy the CeloSc contract
        new CeloSc();
        // stop the broadcast
        vm.stopBroadcast();
    }
}