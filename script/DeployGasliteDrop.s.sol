// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import {GasliteDrop} from "../src/gaslite/GasliteDrop.sol";
import "forge-std/Script.sol";

contract DeployGasliteDrop is Script {

    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        new GasliteDrop();
        vm.stopBroadcast();
    }
}