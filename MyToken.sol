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

