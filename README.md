# Cryptic Token (MyToken) Smart Contract

This repository contains the code for the **Cryptic Token (MyToken)** smart contract, built using Solidity. The token follows basic principles of minting and burning tokens and is designed to be deployed on an Ethereum-based blockchain network.

## Overview

The Cryptic Token is an ERC-20-like token contract with two main functionalities:
- **Minting tokens** (`minttok`): Allows the creation of new tokens and assigns them to a specified address.
- **Burning tokens** (`tokburn`): Allows the destruction of tokens from a specified address, reducing the total supply.

### Key Features:
- **Minting:** Create new tokens and allocate them to an address.
- **Burning:** Destroy tokens from an address, reducing the total supply and the address balance.
- **Public visibility:** Token name (`tokname`), abbreviation (`tokabbv`), and total supply (`toksupply`) are publicly accessible.

## Contract Functions

### 1. `minttok(address tokaddress, uint value)`
- **Description:** Mints a specified number of tokens and assigns them to the given address.
- **Parameters:**
  - `tokaddress`: The address to receive the minted tokens.
  - `value`: The number of tokens to mint.
- **Requirements:** 
  - `value` must be greater than 0.
- **Effect:**
  - Increases the total supply (`toksupply`).
  - Increases the balance of the specified address (`balances[tokaddress]`).

### 2. `tokburn(address tokaddress, uint value)`
- **Description:** Burns a specified number of tokens from the given address.
- **Parameters:**
  - `tokaddress`: The address from which tokens will be burned.
  - `value`: The number of tokens to burn.
- **Requirements:**
  - The address must have a balance greater than or equal to the specified burn value.
- **Effect:**
  - Decreases the total supply (`toksupply`).
  - Decreases the balance of the specified address (`balances[tokaddress]`).

## Example Usage

### Mint Tokens:
```solidity
// Mint 100 tokens for the address 0x1234...
minttok(0x1234567890abcdef1234567890abcdef12345678, 100);
