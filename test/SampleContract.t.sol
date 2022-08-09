// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

import {DSTestPlus} from "solmate/test/utils/DSTestPlus.sol";
import {DSInvariantTest} from "solmate/test/utils/DSInvariantTest.sol";

import {SampleContract} from "../src/SampleContract.sol";

contract SampleContractTest is DSTestPlus, DSInvariantTest {
    event Incremented(uint256 counter);

    SampleContract public sample;

    function setUp() public {
        sample = new SampleContract();

        addTargetContract(address(sample));
    }

    function testIncrement(address caller) public {
        hevm.startPrank(address(caller));

        hevm.expectRevert("ONLY_OWNER");
        sample.incrementBy(1);
    }

    function invariantCounter() public {
        assertEq(sample.counter() * 2, sample.counterX2());
    }
}
