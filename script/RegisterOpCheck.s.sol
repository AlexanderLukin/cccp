// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.25;

import {Script, console} from "forge-std/Script.sol";
import {RegisterOp} from "../src/RegisterOp.sol";

contract RegisterOpCheckScript is Script {
    function run() public {
        vm.startBroadcast();

        address _registerOpAddr = 0xE55cc27460B55c8aC7E73043F38b537758C9E51e;
        RegisterOp _registerOp = RegisterOp(_registerOpAddr);

        _registerOp.check(_registerOpAddr, 1, 1);

        vm.stopBroadcast();
    }
}
