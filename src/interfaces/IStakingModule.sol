// SPDX-FileCopyrightText: 2024 Lido <info@lido.fi>
// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.25;

interface IStakingModule {
    function getNodeOperator(
        uint256 nodeOperatorId,
        bool fullInfo
    ) external view returns (
        bool active,
        string memory name,
        address rewardAddress/*,
        uint64 totalVettedValidators,
        uint64 totalExitedValidators,
        uint64 totalAddedValidators,
        uint64 totalDepositedValidators*/
    );
}