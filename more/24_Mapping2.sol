pragma solidity >=0.8.7;

contract Mapping {
    mapping(address => uint) public balances;

    function updateBalance(uint _newBalance) public {
        balances[msg.sender] = _newBalance;
    }
}

