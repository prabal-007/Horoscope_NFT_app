pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "hardhat/console.sol";

contract ElonNFT is ERC721URIStorage {
       using Counters for Counters.Counter;
        Counters.Counter private _tokenIds;
        
        constructor() ERC721("ElonMusk", "ELON") {}
        
        function mintNFT()
         public
         returns (uint256){
             _tokenIds.increment();
             uint256 newItemId = _tokenIds.current();
             _mint(msg.sender, newItemId);
             _setTokenURI(newItemId, "https://jsonkeeper.com/b/D3C8");
             console.log("The NFT ID %s has been minted to %s", newItemId, msg.sender);
             return newItemId;
            }
    }