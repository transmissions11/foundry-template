// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract SampleContract {
    uint256 public counter;
    uint256 public counterX2;

    address public owner = address(0xBEEF);

    event Incremented(uint256 counter);

    modifier onlyOwner() {
        require(msg.sender == owner, "ONLY_OWNER");
        _;
    }

    function incrementBy(uint256 numToIncrement) public onlyOwner {
        counter += numToIncrement;
        counterX2 += numToIncrement * 2;

        emit Incremented(counter);
    }

    function breakTheInvariant(uint8 x) public onlyOwner {
        if (x == 69) counterX2 = 0;
    }
}
