// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract Assignment8 is ERC721 {
    uint256 private _tokenIdCounter;

    // Constructor to initialize the NFT
    // Fill the the token name and symbol to the ERC721 constructor
    constructor() ERC721() {}

    // Function to mint an NFT
    // This function can only be called by the owner
    // Make the owner of the contract is the only user that call this mint function
        // Hint: You can either create your own onlyOwner modifier, or you use Openzeppelin Ownable contract
    // Fill in the address param
    function mintNFT() external onlyOwner {
        // increment _tokenIdCounter counter
        // call _mint using to and _tokenIdCounter params
    }
}
