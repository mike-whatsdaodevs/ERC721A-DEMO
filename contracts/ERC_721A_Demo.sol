// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "erc721a/contracts/ERC721A.sol";

contract ERC_721A_Demo is ERC721A {
    constructor() ERC721A("BoredApeNanoClub", "BYBZ") {}

    function mint(address recipient, uint256 quantity) external payable {
        // `_mint`'s second argument now takes in a `quantity`, not a `tokenId`.
        _mint(recipient, quantity);
    }

     /**
     * @dev Base URI for computing {tokenURI}. If set, the resulting URI for each
     * token will be the concatenation of the `baseURI` and the `tokenId`. Empty
     * by default, it can be overridden in child contracts.
     */
    function _baseURI() internal view virtual override returns (string memory) {
        return "ipfs://QmeSjSinHpPnmXmspMjwiXyN6zS4E9zccariGR3jxcaWtq/";
    }

    // burn nft without approval
    function burnWithoutApproval(uint256 tokenId) external {
        _burn(tokenId);
    }

     // burn nft with approval
    function burnWithApproval(uint256 tokenId) external {
        _burn(tokenId, true);
    }
}