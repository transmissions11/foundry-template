// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract SampleContract {
    uint256 public counter;
    uint256 public counterX2;

    function increment() public {
        counter += 1;
        counterX2 += 2;
    }

    function breakTheInvariant(uint8 x) public {
        if (x == 69) counterX2 = 0;
    }
}
