// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Test, console} from "forge-std/Test.sol";
import {HorseStore} from "../../src/HorseStoreV1/HorseStore.sol";
import {IHorseStore} from "../../src/HorseStoreV1/IHorseStore.sol";

abstract contract Base_TestV1 is Test {
    IHorseStore public horseStore;

    function setUp() public virtual {
        horseStore = IHorseStore(address(new HorseStore()));
    }

    function testreadValue() public {
        uint256 initialValue = horseStore.readNumberOfHorses();
        assertEq(initialValue, 0);
    }

    function testWriteValue(uint256 numberOfHorses) public {
        horseStore.updateHorseNumber(numberOfHorses);
        assertEq(horseStore.readNumberOfHorses(), numberOfHorses);
    }
}

// Compile this contract with the following command: solc --strict-assembly --optimize --optimize-runs 2000 ./yul/HorseStoreYul.yul --bin | grep 60
