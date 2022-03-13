//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7;

contract ArrayOperations {
    //create a fixed size array
    uint[3] public myArray;

    function addArray(uint _n) external {
        myArray.push(_n);
    }
}