//SPDX-Licence-Identifier: MIT

pragma solidity >=0.8.7;

contract SendEther {
    function sendEth() external payable {

    }

    function balanceOf() external view returns(uint) {
        return address(this).balance;
    }
}