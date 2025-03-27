// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {TimestampRecorder} from "../src/TimestampRecorder.sol";

contract TimestampRecorderTest is Test {
    TimestampRecorder public timestampRecorder;

    function setUp() public {
        timestampRecorder = new TimestampRecorder();
    }

    function test_Record() public {
        uint64 time1 = uint64(block.timestamp);
        timestampRecorder.record();

        vm.warp(block.timestamp + 100);

        // assertEq(block.timestamp, time1 + 100);
        assertEq(timestampRecorder.timestamp(), time1);
    }

}
