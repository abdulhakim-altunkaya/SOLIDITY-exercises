//SPDX-Licence-Identifier: MIT

pragma solidity >=0.8.7;

contract Counter {
    uint myNumber = 5;

    function addNumber(uint newNumber) external returns(uint) {
        return myNumber+newNumber;
    }
}