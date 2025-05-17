# aptos_move_project

This project is a Move smart contract package designed for the Aptos blockchain. It provides custom Move modules and scripts for decentralized application development and experimentation.

## Project Structure

- `Move.toml`  
  Project manifest and dependency configuration.

- `sources/`  
  Contains main Move modules, including `project.move`.

- `scripts/`  
  Move scripts for interacting with deployed modules.

- `build/aptos-kolkata-project/`  
  Compiled bytecode, source maps, and dependencies.

- `tests/`  
  Directory for Move unit and integration tests.

## Getting Started

1. **Install Aptos CLI**  
   Follow the [Aptos CLI installation guide](https://aptos.dev/cli-tools/aptos-cli-tool/install-aptos-cli/) to set up your environment.

2. **Build the Project**
   ```sh
   aptos move compile
   ```
