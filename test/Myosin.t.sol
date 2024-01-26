// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.23;

import {Test, console} from "forge-std/Test.sol";
import {Myosin} from "../src/Myosin.sol";

contract MyosinTest is Test {
    Myosin public myosin;

    function testFuzz_Deployment(address account, uint256 value) public {
        myosin = new Myosin(account, value);
        assertEq(myosin.name(), "Myosin");
        assertEq(myosin.symbol(), "MYO");
        assertEq(myosin.balanceOf(account), myosin.totalSupply());
    }
}
