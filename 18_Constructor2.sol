pragma solidity >=0.8.7;

contract RandomNumber {
    uint public myNumber = 8;
    uint public newNumber = 9;
    constructor() {
        myNumber = uint(keccak256(abi.encodePacked(block.timestamp, msg.sender, myNumber))) % 100;
    }
    function addNumber(uint _value) public returns(uint) {
        newNumber = newNumber + myNumber + _value;
        return newNumber;
    }
}