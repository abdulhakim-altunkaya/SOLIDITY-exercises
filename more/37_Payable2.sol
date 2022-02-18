//SPDX-Licence-Identifier: MIT
pragma solidity >=0.8.7;

contract Payable2 {
    function sentEth() external payable{

    }

    function getBalance() external returns(uint) {
        return address(this).balance;
    }
}