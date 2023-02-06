// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

//the goal of an autocount smart contract is to keep track of the ID of each NFT that are minted 


import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract MercNFT is ERC721, Ownable {
    using Counters for Counters.Counter;

    Counters.Counter private _tokenIdCounter;

    constructor() ERC721("Merc NFT", "MNT") {}

    function _baseURI() internal pure override returns (string memory) {
        return "https://ipfs.io/ipfs/QmSnQifvEs7ao3BsSSiPc1JLpGcJbHYjC1hPvGmovUdQ2X?filename=MercSecond-nft.json";
    }

    function safeMint(address to) public onlyOwner {
        uint256 tokenId = _tokenIdCounter.current();
        _tokenIdCounter.increment();
        _safeMint(to, tokenId);
    }
}
Footer
© 2023 GitHub, Inc.
Footer navigation
Terms
Privacy
