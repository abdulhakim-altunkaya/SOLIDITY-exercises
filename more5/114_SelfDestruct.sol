//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7;

contract SelfDestruct {
    /*selfdestruct function allows us to delete a contract from the blockchain.
    It also allows us to force send ether to any address even if the address is a contract
    without a fallback function.
    
    selfdesctruct() takes one parameter: address. We can set this address to msg.sender
    But the parameter must be a payable address. Thats why we are casting it. */

    //You can use this or fallback to send ether to this contract. If you use this,
    //it means before clicking deploy button, you can insert some value in msg.value input area.
    constructor() payable {}

    function kill() external {
        selfdestruct(payable(msg.sender));
    }

    function testCall() external pure returns(string memory) {
        return "contract still exists";
    }

    //this is needed so that we can send some ether to our contract for testing. Enter
    // some value in msg.value and click on transact button.
    fallback() external payable{}

    function getBalance() external view returns(uint) {
        return address(this).balance;
    }
}

