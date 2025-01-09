// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import {Assignment8} from "../src/Assignment8.sol";

contract Assignment8Test is Test {
    Assignment8 assignment;

    function setUp() public {
        assignment = new Assignment8();
    }

    function testMintNFTByOwner() public {
        // Mint an NFT to the test contract (owner calling)
        assignment.mintNFT(address(this));

        // Check ownership of the minted NFT
        address owner = assignment.ownerOf(1);
        assertEq(owner, address(this), "Owner of token ID 1 should be the test contract");
    }

    function testMintNFTByNonOwner() public {
        // Create a non-owner address
        address nonOwner = makeAddr("nonOwner");
        vm.prank(nonOwner);

        // Expect the transaction to revert
        vm.expectRevert();
        assignment.mintNFT(nonOwner);
    }
}
