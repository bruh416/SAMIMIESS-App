# SAMIMIESS APP - Mini dApp

## Description
A colorful and interactive decentralized application (dApp) built for **MG3012 - Blockchain Technology for Business**.  
This dApp allows users to store and read a numeric value and a short message using a **Solidity smart contract** on the **Sepolia testnet**, with a web-based frontend built using HTML, CSS, and JavaScript (ethers.js).

## Files
- `SmartContract.sol` - Solidity smart contract
- `index.html` - Frontend connecting via ethers.js
- `style.css` - Optional CSS styling
- `screenshots/` - Screenshots showing contract deployment and UI interaction

## Setup Instructions
1. Open `index.html` in a web browser.
2. Ensure MetaMask is installed and connected to the **Sepolia Testnet**.
3. The deployed contract address is already included in the frontend code:  

4. Use the buttons on the page to:
- Connect your wallet  
- Read and write numeric values  
- Read and write short messages  

## Contract Functions
- `getValue()` - Read the current numeric value
- `setValue(uint256)` - Set a new numeric value
- `increment(uint256)` - Increment the numeric value
- `getMessage()` - Read the current message
- `setMessage(string)` - Update the message
- `getOwner()` - Show the contract owner address

## Screenshots
See the `screenshots/` folder for:
1. Wallet connected
2. Reading values/messages
3. Writing values/messages

## Deployed Contract Address
0xd9145CCE52D386f254917e481eB44e9943F39138
