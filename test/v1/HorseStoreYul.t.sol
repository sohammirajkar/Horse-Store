// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Base_TestV1, IHorseStore} from "./Base_TestV1.t.sol";
import {HorseStoreYul} from "../../src/HorseStoreV1/HorseStoreYul.sol";

contract HorseStoreSolc is Base_TestV1 {
    function setUp() public override {
        horseStore = IHorseStore(address(new HorseStoreYul()));
    }
}
