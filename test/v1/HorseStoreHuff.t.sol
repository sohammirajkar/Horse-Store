// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Base_TestV1, IHorseStore} from "./Base_TestV1.t.sol";
import {HuffDeployer} from "foundry-huff/HuffDeployer.sol";

contract HorseStoreHuff is Base_TestV1 {
    string public constant HORSE_STORE_HUFF_LOCATION = "HorseStoreV1/HorseStore";

    function setUp() public override {
        horseStore = IHorseStore(HuffDeployer.config().deploy(HORSE_STORE_HUFF_LOCATION));
    }
}
