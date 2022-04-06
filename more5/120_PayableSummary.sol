//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7;

contract PayableSummary {
    constructor() payable{}

    function foo() external payable{}

    fallback() external payable{}

    receive() external payable{}

    **** 
    function bazz(address payable _to) external payable{
        (bool success, ) = _to.call{value: msg.value}("");
        require(success, "transaction failed");
    }

    **** 
    function getBalance() external view returns(uint){
        return address(this).balance;
    }
    
    ****
    receive: msg.data must be empty
    fallback: doesnt care about msg.data
}