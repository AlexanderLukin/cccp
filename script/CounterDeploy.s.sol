// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.25;

import {Script, console} from "forge-std/Script.sol";
import {Counter} from "../src/Counter.sol";

contract CounterDeployScript is Script {

    // function setUp() public {}

    function run() public {
        vm.startBroadcast();

        Counter _counter = new Counter(42);
        console.log("Counter address", address(_counter));

        vm.stopBroadcast();
    }
}
