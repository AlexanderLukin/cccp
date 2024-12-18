// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.25;

import {IStakingRouter} from "./interfaces/IStakingRouter.sol";
import {IStakingModule} from "./interfaces/IStakingModule.sol";

contract RegisterOp {
    event CheckSucceeded(address sender, address reward, address eoa);

    error CheckFailed(address sender, address expected);

    // address immutable public REWARD_ADDRESS = 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266;
    address immutable public STAKING_ROUTER_ADDRESS = 0xd6EbF043D30A7fe46D1Db32BA90a0A51207FE229; // HOLESKY

    function check(address eoa, uint256 moduleId, uint256 operatorId) public {
        IStakingRouter router = IStakingRouter(payable(STAKING_ROUTER_ADDRESS));

        address moduleAddr = router.getStakingModule(moduleId).stakingModuleAddress;

        IStakingModule module = IStakingModule(moduleAddr);

        (bool active, string memory name, address rewardAddress) = module.getNodeOperator(operatorId, true);

        /* if (msg.sender != rewardAddress) {
            revert CheckFailed(msg.sender, REWARD_ADDRESS);
        } */

        emit CheckSucceeded(msg.sender, rewardAddress, eoa);
    }
}
