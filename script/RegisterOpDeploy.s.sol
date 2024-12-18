// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.25;

import {Script, console} from "forge-std/Script.sol";
import {RegisterOp} from "../src/RegisterOp.sol";

contract RegisterOpDeployScript is Script {

    // function setUp() public {}

    function run() public {
        vm.startBroadcast();

        RegisterOp _registerOp = new RegisterOp();
        console.log("RegisterOp address", address(_registerOp));

        vm.stopBroadcast();
    }
}
