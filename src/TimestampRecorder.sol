// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract TimestampRecorder {
    uint64 public timestamp;

    function record() public {
        timestamp = uint64(block.timestamp);
    }
}
