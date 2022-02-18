//SPDX-Licence-Identifier: MIT
pragma solidity >=0.8.7;

contract Payable2 {
    function investEthToThisContract() external payable{
        if(msg.value < 1 ether) {
            revert();
        } 
    }

    function getBalance() external view returns(uint) {
        return address(this).balance;
    }
}