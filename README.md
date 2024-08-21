# Mod3

# KingAnkit ERC-20 Token Contract

## Overview

The **KingAnkit** smart contract is an implementation of the ERC-20 token standard on the Ethereum blockchain. It allows for the creation, minting, burning, and transfer of a custom token named **ANKITRupee** with the symbol **ANKT**.

## Features

- **ERC-20 Compliance**: Implements the standard ERC-20 interface.
- **Custom Decimals**: Tokens are set to have 2 decimal places.
- **Minting**: Allows for the creation of new tokens and allocation to any address.
- **Burning**: Permits the destruction of tokens from the sender's account.
- **Transfer**: Supports transferring tokens between addresses.
- **Total Supply Tracking**: Maintains an accurate total supply count of tokens.

## Installation and Setup

### Prerequisites

- Node.js
- Hardhat
- Remix IDE (for alternative deployment)
- Solidity compiler (0.8.21)

### Setting Up with Hardhat

1. **Initialize a Hardhat Project**

```bash
   mkdir kingankit-token
```
```
   cd kingankit-token
```
```
   npx hardhat
```
```
npm install @openzeppelin/contracts
```
```
npx hardhat compile
```
### Rum
```
npx hardhat run scripts/deploy.js --network localhost
```


Contract Functions
- decimals(): Returns the number of decimal places for the token (2).
- balance(): Returns the balance of the caller's account.
- mint(address _toWallet, uint _numberOfTokens): Mints new tokens to the specified address.
- burn(uint _howMany): Burns a specified number of tokens from the caller's account.
- sendTo(address _toAccount, uint _howMany): Transfers tokens from the caller's account to the specified address.
- totalSupply(): Returns the total supply of the token.
