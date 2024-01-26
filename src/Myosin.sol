// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.23;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Myosin is ERC20 {
    constructor(address account, uint256 value) ERC20("Myosin", "MYO") {
        _mint(account, value);
    }
}
