# Degen Token Contract
# (Fuji chain)

This Solidity contract represents the "Degen" token deployed on the Fuji Chain. It is an ERC-20 token with additional features for managing an in-game store.

## Features

1. **In-Game Store**: This contract includes an in-game store where users can purchase various items using the DGN token.

2. **Minting**: The owner of the contract has the ability to mint new DGN tokens.

3. **Burning**: Users can burn (destroy) their DGN tokens.

4. **Check Balance**: Users can check their DGN token balance.

5. **Transfer DGNs**: Users can transfer DGN tokens to other addresses.

## In-Game Store

The in-game store includes the following items:

1. Glacier M416 - 500 DGN
2. Glacier AKM - 200 DGN
3. Ragtag Goon - SCAR-L - 100 DGN
4. Samurai Ops - AKM - 200 DGN
5. Toxic - M16A4 - 50 DGN
6. Raging Chicken - QBZ - 150 DGN

## Deploy Contract

1. Open contract in remix and change Environment to Inject Provider to connect to Metamask.
2. Deploy contract to Fuji Chain and interact in remix IDE.

## Functions

- `createDGN(address to, uint256 amount)`: Mint new DGN tokens. (Owner only)

- `fetchStoreItem(uint256 index)`: Get details of a specific store item.

- `purchaseStoreItem(uint256 itemIndex)`: Redeem a store item by spending DGN tokens.

- `destroyDGNs(uint256 amount)`: Burn (destroy) a specified amount of DGN tokens.

- `inspectBalance(address _address)`: Check the DGN token balance of an address.

- `sendDGNs(address _address, uint _amount)`: Transfer DGN tokens from one address to another.

## Crafter

- Aum Patel
- GitHub: [https://github.com/Aum2405](https://github.com/Aum2405)
