// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import "../src/Myosin.sol";

contract MyosinDeploy is Script {
    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);
        new Myosin(vm.envAddress("TOKEN_OWNER_ACCOUNT"), vm.envUint("TOKEN_TOTAL_SUPPLY"));
        vm.stopBroadcast();
    }
}
