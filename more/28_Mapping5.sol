pragma solidity >=0.8.7;

contract LedgerBalance {
    mapping(address => uint) public ledgerBalances;

    function addValue (uint newBalance) public {
        ledgerBalances[msg.sender] = newBalance;
    }


}