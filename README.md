# Vehicle License Eligibility Smart Contract

The `vehicleLicenseEligibility` smart contract provides functions to check eligibility for learning and permanent vehicle licenses based on age criteria. The contract uses Solidity and is designed to run on the Ethereum Virtual Machine (EVM).

## Contract Overview

### Features

- **Learning License Eligibility**: Checks if the user is eligible for a learning license.
- **Permanent License Eligibility**: Checks if the user is eligible for a permanent license.
- **General License Eligibility**: Provides a general function to check for both learning and permanent license eligibility.

### Contract Structure

- **Functions**
  - `checkLearningLicense(uint age)`: Checks if the user is eligible for a learning license. The age must be between 16 and 18 (exclusive).
  - `checkPermanentLicense(uint age)`: Checks if the user is eligible for a permanent license. The age must be at least 18.
  - `checkLicense(uint age)`: Checks for general license eligibility and returns the type of license the user is eligible for. Reverts if not eligible for any license.

## How to Use

### Setup

1. **Open Remix IDE**
   - Go to [Remix IDE](https://remix.ethereum.org/).

2. **Create a New File**
   - In the File Explorer, click the "+" button to create a new file.
   - Name the file `vehicleLicenseEligibility.sol`.

3. **Copy and Paste the Code**
   - Copy the `vehicleLicenseEligibility` contract code and paste it into the `vehicleLicenseEligibility.sol` file.

### Compilation

1. **Compile the Contract**
   - Click on the "Solidity Compiler" tab.
   - Ensure the compiler version is set to `0.8.26` or later.
   - Click the "Compile vehicleLicenseEligibility.sol" button.

### Deployment

1. **Deploy the Contract**
   - Click on the "Deploy & Run Transactions" tab.
   - Ensure the environment is set to "JavaScript VM".
   - Click the "Deploy" button.

### Interaction

1. **Check Learning License Eligibility**
   - Enter the age in the `checkLearningLicense` input field.
   - Click the `checkLearningLicense` button.
   - Verify if the user is eligible for a learning license based on the provided age.

2. **Check Permanent License Eligibility**
   - Enter the age in the `checkPermanentLicense` input field.
   - Click the `checkPermanentLicense` button.
   - Verify if the user is eligible for a permanent license based on the provided age.

3. **Check General License Eligibility**
   - Enter the age in the `checkLicense` input field.
   - Click the `checkLicense` button.
   - Verify the type of license the user is eligible for based on the provided age. The function returns a message indicating eligibility for a learning license, permanent license, or not eligible for any license.

## Example Usage

1. **Learning License Eligibility Check**
   - Call `checkLearningLicense` with an age of 17.
   - The function should pass as the age is between 16 and 18 (exclusive).

2. **Permanent License Eligibility Check**
   - Call `checkPermanentLicense` with an age of 20.
   - The function should pass as the age is at least 18.

3. **General License Eligibility Check**
   - Call `checkLicense` with an age of 15.
   - The function should revert with the message "Not eligible for any license".
