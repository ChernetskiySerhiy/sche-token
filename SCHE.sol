// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";

contract SCHE is ERC20 {

    uint8 private constant _DECIMALS = 16;

    constructor() ERC20("SCHE", "SCHE") {
        // totalSupply = 100000000 with 16 decimals
        uint256 supply = 100000000 * (10 ** _DECIMALS);
        _mint(msg.sender, supply);
    }

    function decimals() public pure override returns (uint8) {
        return _DECIMALS;
    }
}
