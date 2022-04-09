//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7;

contract MultiSigWallet {
    //Deposit will fire when ether is deposited to this multisigwallet
    //Submit will fire when a transaction is submitted waiting for the other owners to approve
    //Approve will fire when the transaction is approved.
    //Revoke will fire when owners change their mind and revoke approved transaction. (But I am not
    // sure here. revoke may probably mean rejecting transaction also).
    //Execute will fire when there is sufficient amount approvals, then the contract can be executed.
    event Deposit(address indexed sender, uint amount);
    event Submit(uint indexed txId);
    event Approve(address indexed owner, uint indexed txId);
    event Revoke(address indexed owner, uint indexed txId);
    event Execute(uint indexed txId);

    
}