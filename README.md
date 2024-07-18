# MyToken

A simple Ethereum smart contract for creating and managing a custom token named "Ananya" (symbol: ANY). This contract includes functionalities for minting new tokens and burning existing ones.

## Description

MyToken is a basic implementation of an Ethereum-based token. 
It allows the creation of a custom token with a name and symbol, and provides functionalities to mint new tokens and burn existing ones. 
This contract can be used as a starting point for more complex token-based applications or as a learning tool for understanding Ethereum smart contract development.



## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. 

To get started, go to the Remix website at https://remix.ethereum.org/.


Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. 
Save the file with a .sol extension (e.g., MyToken.sol). Copy and paste the following code into the file:
```javascript
pragma solidity 0.8.18;

contract MyToken {
    string public tokenName = "Akshat";
    string public tokenAbbrv = "Ak";
    uint256 public totalSupply = 0;

    mapping(address => uint256) public balances;

    function mint(address _address, uint256 _value) public {
        totalSupply += _value;
        balances[_address] += _value;
    }

    function burn(address _address, uint256 _value) public {
        if (balances[_address] >= _value) {
            totalSupply -= _value;
            balances[_address] -= _value;
        } else {
            revert("Insufficient balance to burn");
        }
    }
}

```
To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. 
Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile MyToken.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Then copy the Account address and go to Deployed/Unpinned Contracts section 
and expand the mint section and paste the Account address. Now, set any token value (ex. 2000) and then click on tranct. To see the updated value click on totalSupply. Likewise burn the token also.

## Authors

Akshat Raj Sinha

[@Akshat Raj Sinha](sinhaakshat551@gmail.com)
