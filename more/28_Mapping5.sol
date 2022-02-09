pragma solidity >=0.8.7;

contract LedgerBalance {
    mapping(address => uint) public ledgerBalances;

    function (uint newBalance) public {
        ledgerBalance[msg.sender] = newBalance;
    }


}