// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

// The ERC-20 standard defines a set of rules that developers 
// can follow to create their own tokens on the Ethereum Blockchain.


import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract KingAnkit is ERC20 
{
    address owner;
    string nameOfCoin = "ANKITRupee";
    string symbolOfCoin = "ANKT";
    uint256 supplyTotal = 0;

    function decimals() public view virtual override returns (uint8) {
        return 2;
    }

        constructor(uint256 initialSupply) ERC20(nameOfCoin, symbolOfCoin) {
        // Mint initial supply to the contract deployer (owner)
        uint256 initialSupplyWithDecimals = initialSupply;
        _mint(msg.sender, initialSupplyWithDecimals);
        supplyTotal = initialSupplyWithDecimals;
    }

    function balance() public view returns (uint256)
    {
        return balanceOf(msg.sender);
    }

    function mint(address _toWallet, uint _numberOfTokens) public 
    {
        _mint(_toWallet, _numberOfTokens);
        supplyTotal += _numberOfTokens;
    }

    function burn(uint _howMany) public 
    {
        _burn(msg.sender, _howMany);
        supplyTotal -= _howMany;
    }

    // transfer function 
    function sendTo(address _toAccount, uint _howMany) public
    {
        _transfer(msg.sender, _toAccount, _howMany);
    }


    function totalSupply() public view virtual override returns (uint256) {
        return supplyTotal;
    }
}