// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract nft is ERC721, Ownable { 
constructor() ERC721("Merc NFT", "MNT"){
}

function _baseURI() internal pure override returns (string memory){
return "https://ipfs.io/ipfs/QmeCkuL1om6yUUMhEchcuDypncHgu3yoYNQcBZoT6AqRwh?filename=merc-nft.json"; 
} 

function safeMint(address to, uint256 tokenId) public onlyOwner{
_safeMint(to, tokenId); 

}

}
