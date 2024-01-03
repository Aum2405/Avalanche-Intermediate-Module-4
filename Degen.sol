// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts@4.9.2/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@4.9.2/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts@4.9.2/access/Ownable.sol";

contract Degen is ERC20, ERC20Burnable, Ownable {
    struct StoreItem {
        string itemName;
        uint256 itemPriceInDGN;
    }

    StoreItem[] public storeItems;

    constructor() ERC20("Degen", "DGN") {
    
        storeItems.push(StoreItem("Glacier M416", 500));
        storeItems.push(StoreItem("Glacier AKM", 200));
        storeItems.push(StoreItem("Ragtag Goon - SCAR-L", 100));
        storeItems.push(StoreItem("Samurai Ops - AKM", 200));
        storeItems.push(StoreItem("Toxic - M16A4", 50));
        storeItems.push(StoreItem("Raging Chicken - QBZ", 150));
    }

    function createDGN(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function fetchStoreItem(
        uint256 index
    )   public view returns (string memory, uint256) {
        require(index < storeItems.length, "Item doesn't Exist");
        StoreItem storage item = storeItems[index];
        return (item.itemName, item.itemPriceInDGN);
    }

    function purchaseStoreItem(uint256 itemIndex) public {
        require(itemIndex < storeItems.length, "Item doesn't Exist");
        StoreItem storage item = storeItems[itemIndex];

        uint256 itemPrice = item.itemPriceInDGN;
        require(balanceOf(msg.sender) >= itemPrice, "Insufficient balance");

        transfer(owner(), itemPrice);
    }

    function destroyDGNs(uint256 amount) public {
        assert(balanceOf(msg.sender) >= amount);
        _burn(msg.sender, amount);
    }

    function inspectBalance(address _address) public view returns (uint) {
        return balanceOf(_address);
    }

    function sendDGNs(address _address, uint _amount) public {
        _transfer(msg.sender, _address, _amount);
    }
}
