# Coffee Token

This repository contains smart contract code for a Coffee Token and a Token Sale implementation on the Ethereum blockchain.

## Contracts

### CoffeeTokenSale.sol

This contract facilitates the sale of Coffee Tokens at a specific price.

**Functionality:**

- `constructor(address _token)`: Initializes the token sale with the specified token address.
- `purchaseACoffee()`: Allows users to purchase Coffee Tokens by sending Ether at the specified token price.

### CoffeeToken.sol

This contract defines the Coffee Token, including minting and purchasing functionalities.

**Functionality:**

- `constructor()`: Initializes the Coffee Token with necessary roles.
- `mint(address to, uint256 amount)`: Mints Coffee Tokens and assigns them to the specified address.
- `buyOneCoffe()`: Allows users to purchase one coffee by burning tokens.
- `buyOneCoffeFrom(address account)`: Allows one account to buy one coffee from another account.
- `increaseAllowance(address spender, uint256 addedValue)`: Increases token allowance for a spender.
- `decreaseAllowance(address spender, uint256 subtractedValue)`: Decreases token allowance for a spender.

## How to Use

1. Clone the repository.
2. Deploy the contracts to an Ethereum development network.
3. Interact with the deployed contracts using appropriate function calls.

OR

Work on Remix - Ethereum IDE: `https://remix.ethereum.org/`

## Prerequisites

- Node.js
- Truffle (for compiling and deploying contracts)
- Ethereum Development Environment (Ganache, Hardhat, etc.)

## Installation

1. Clone the repository:

    ```bash
    git clone https://github.com/lorentsinani/coffee-token.git
    ```

2. Install dependencies:

    ```bash
    cd coffee-token
    npm install
    ```

## Usage

1. Compile the contracts:

    ```bash
    truffle compile
    ```

2. Deploy the contracts:

    ```bash
    truffle migrate --network <network-name>
    ```

3. Use appropriate interactions with the deployed contracts based on your use case.

## Contributing

Feel free to contribute by creating issues or pull requests. All contributions are welcome!

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
