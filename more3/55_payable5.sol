//SPDX-Licence-Identifier: MIT

pragma solidity >=0.8.7;

contract Payable5 {
    //this address below can now send ether. What about
    // receiving ether?
    address payable public owner;
    //in constructor, I can't say owner=msg.sender
    // because owner is payable and msg.sender is not yet.
    // So I cast msg.sender to payable
    constructor(){
      owner = payable(msg.sender);  
    }

    //Here we are sending ether to this function. What
    // this means I am not sure I know.
    function deposit() external payable {

    }

    function getBalance() external view returns(uint) {
        return address(this).balance;
    }


}