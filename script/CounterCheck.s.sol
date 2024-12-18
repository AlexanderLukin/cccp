// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.25;

import {Script, console} from "forge-std/Script.sol";
import {Counter} from "../src/Counter.sol";

contract CounterCheckScript is Script {
    function run() public {
        vm.startBroadcast();

        address _counterAddr = 0xE55cc27460B55c8aC7E73043F38b537758C9E51e;
        Counter _counter = Counter(_counterAddr);
        console.log("Counter value", _counter.number());

        _counter.loop();

        console.log("Counter value", _counter.number());

        vm.stopBroadcast();
    }
}
