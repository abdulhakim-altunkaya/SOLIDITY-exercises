pragma solidity >=0.8.7;

contract myArray {

    uint[] public myArray;

    function setArray() public returns(uint[] memory) {
        myArray = [24, 55, 66];
        return myArray;
    }
}