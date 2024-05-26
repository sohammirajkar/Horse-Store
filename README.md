# Horse Store

Welcome to the Horse Store project! This repository is designed for learning about compilers, opcodes, and contract dissection. You'll delve into the intricacies of contracts, dissecting and tinkering with them along the way. The primary tools we'll use are huff, Solidity, and Yul.

Later on, we'll utilize this repository to grasp the basics of formal verification.

## Getting Started

### Requirements

To get started, ensure you have the following installed:

- **Git**: Verify by running `git --version`.
- **Foundry / Foundryup**: Install forge, cast, and anvil. Confirm installation by running `forge --version`, ensuring an output similar to: `forge 0.2.0 (f016135 2022-07-04T00:15:02.930499Z)`. For the latest versions, run `foundryup`.
- **Huff Compiler**: Verify installation by running `huffc --version` and confirming output similar to: `huffc 0.2.0`.
- **Solidity Compiler**: Verify installation by running `solc --version`. The output should resemble: `solc, the solidity compiler commandline interface Version: 0.8.15+commit.e14f2714.Darwin.appleclan`.
- **Halmos** (requires Python): Verify installation by running `halmos --version`, ensuring an output similar to: `Halmos 0.1.9`.

### Quickstart

1. **Clone the repository & install dependencies**:

   ```
   git clone https://github.com/sohammirajkar/Horse-Store.git
   cd Horse_Store
   make
   ```

2. **Run tests**:

   ```
   forge test
   ```

### Usage

#### Compile Contracts

To manually obtain the raw bytecode of each contract:

- To achieve results identical to mine, use `solc` version `Version: 0.8.20+commit.a1b79de6.Darwin.appleclang`.

```bash
huffc src/huff/HorseStore.huff -b
solc --strict-assembly --optimize --optimize-runs 20000 yul/HorseStoreYul.yul --bin | grep 60 
solc --optimize --optimize-runs 20000 src/HorseStore.sol --bin | grep 60 
solc --optimize --optimize-runs 20000 src/HorseStoreYul.sol --bin | grep 60 
```

## Repository

You can find the repository [here](https://github.com/sohammirajkar/Horse-Store.git).

Feel free to explore, learn, and contribute! Happy coding! 🐴🚀

# Horse_Store
# horse-store
