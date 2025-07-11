# Celo Smart Contract Project

This repository contains smart contracts developed for the Celo network using [Foundry](https://book.getfoundry.sh/), a fast and modular toolkit for Ethereum development.

## Table of Contents

- [Introduction](#introduction)
- [Requirements](#requirements)
- [Installation](#installation)
- [Project Structure](#project-structure)
- [Main Commands](#main-commands)
  - [Makefile Commands](#makefile-commands)
  - [Foundry Commands](#foundry-commands)
- [Testing](#testing)
- [Deployment](#deployment)
- [Formatting & Utilities](#formatting--utilities)
- [Resources](#resources)

## Introduction

This project uses **Foundry** to compile, test, and deploy smart contracts in Solidity. It includes scripts for deployment on different networks and a set of automated tests.

## Requirements

- [Foundry](https://book.getfoundry.sh/getting-started/installation.html)
- [Node.js](https://nodejs.org/) (optional, for additional utilities)
- Access to a Celo network (RPC)

## Installation

1. Install Foundry:
    ```sh
    curl -L https://foundry.paradigm.xyz | bash
    foundryup
    ```

2. Install project dependencies:
    ```sh
    forge install
    ```

## Project Structure

```
.
├── src/                # Solidity source contracts
├── test/               # Solidity tests
├── script/             # Deployment scripts
├── broadcast/          # Deployment results
├── lib/                # External libraries (e.g. forge-std)
├── Makefile            # Automated commands
├── foundry.toml        # Foundry configuration
└── README.md
```

## Main Commands

### Makefile Commands

You can use the following commands with `make` to automate common tasks:

- **Compile contracts:**
    ```sh
    make build
    ```

- **Run tests:**
    ```sh
    make test
    ```

- **Format contracts:**
    ```sh
    make format
    ```

- **Take gas snapshot:**
    ```sh
    make snapshot
    ```

- **Start local Anvil node:**
    ```sh
    make anvil
    ```

- **Clean artifacts:**
    ```sh
    make clean
    ```

- **Update dependencies:**
    ```sh
    make update
    ```

- **Deploy to Ganache testnet:**
    ```sh
    make deploy-testnet-ganache
    ```

- **Deploy to Anvil testnet:**
    ```sh
    make deploy-testnet-anvil
    ```

- **Deploy to Celo testnet:**
    ```sh
    make deploy-testnet-celo
    ```

> **Note:** Some commands require environment variables set in `.env` (e.g., RPC_URLs and private keys).

### Foundry Commands

You can also run Foundry commands directly:

- **Compile:**
    ```sh
    forge build
    ```

- **Test:**
    ```sh
    forge test
    ```

- **Format:**
    ```sh
    forge fmt
    ```

- **Gas snapshot:**
    ```sh
    forge snapshot
    ```

- **Local node:**
    ```sh
    anvil
    ```

- **Deploy script:**
    ```sh
    forge script script/DeployCeloSc.s.sol:DeployCeloSc --rpc-url <your_rpc_url> --private-key <your_private_key>
    ```

- **Cast utilities:**
    ```sh
    cast <subcommand>
    ```

## Testing

Tests are located in the [`test/`](test/) folder. To run them:

```sh
make test
# or directly
forge test
```

## Deployment

You can deploy contracts using the scripts in [`script/`](script/). Example for Celo testnet:

```sh
make deploy-testnet-celo
```

Make sure you have the required environment variables set in your `.env` file.

## Formatting & Utilities

- Format code with:
    ```sh
    make format
    ```
- Take gas usage snapshots with:
    ```sh
    make snapshot
    ```

## Resources

- [Official Foundry Documentation](https://book.getfoundry.sh/)