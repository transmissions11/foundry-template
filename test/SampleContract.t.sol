// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

import {DSTestPlus} from "solmate/test/utils/DSTestPlus.sol";
import {DSInvariantTest} from "solmate/test/utils/DSInvariantTest.sol";

import {SampleContract} from "../src/SampleContract.sol";

contract SampleContractTest is DSTestPlus, DSInvariantTest {
    SampleContract public sample;

    function setUp() public {
        sample = new SampleContract();

        addTargetContract(address(sample));
    }

    function testIncrement() public {
        sample.increment();
        assertEq(sample.counter(), 1);
        assertEq(sample.counterX2(), 2);
    }

    function invariantTest() public {
        assertEq(sample.counter() * 2, sample.counterX2());
    }
}
