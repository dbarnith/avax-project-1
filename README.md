# Simple Home Security Smart Contract

## Overview

This Solidity smart contract, named SimpleHomeSecurity, is designed to provide basic home security functionalities, allowing the owner to control access to their home using a PIN.

## Contract Details

- **Owner:** The address of the contract owner is set during contract deployment.
- **Inside Home:** A boolean variable indicating whether the owner is currently inside the home.
- **PIN:** A 4-digit PIN is initially set during contract deployment and can be changed by the owner.

## Features

### 1. Change PIN
This function allows the owner to change the PIN for accessing the home. It requires the current PIN (key) to be provided for authentication.

### 2. Enter Home 
The owner can use this function to enter the home by providing the correct PIN (key). The function checks if the caller is the owner and if the provided PIN matches the current PIN.

### 3. Leave Home
This function allows the owner to leave the home, updating the contract state accordingly.
