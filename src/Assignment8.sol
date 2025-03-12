// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";    
import "@openzeppelin/contracts/token/access/Ownable.sol";

// make this contract inherits from: ERC721URIStorage contract
contract Assignment8 {
    // declare a private uint called _tokenIdCounter

    // pass name and symbol of the nft token collection
    constructor() ERC721() {
        
    }

    // make this function visibility: external
    // pass string json uri parameter
    // restrict this function to be called only by the owner
        // Hint: You can use OpenZeppelin Ownable contract imported above
    
    function mintNFT() {
        // call _mint to mint a new nft to the function caller

        // set token uri to the token id using _setTokenURI

        // increment token id counter

    }

}
