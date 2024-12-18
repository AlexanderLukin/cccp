// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.25;

contract Counter {
    uint256 public number;

    constructor(uint256 newNumber) {
        setNumber(newNumber);
    }

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        number++;
    }

    function loop() external {
        for (uint256 i = 0; i < 100; ++i) {
            increment();
        }
    }
}
