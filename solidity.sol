/**
   * @title ContractName
   * @dev ContractDescription
   * @custom:dev-run-script file_path
   */
  contract ContractName {}
  
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {
    string public tokenName = "Akshat";
    string public tokenAbbrv = "XYZ";
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
        } 
    }
}
