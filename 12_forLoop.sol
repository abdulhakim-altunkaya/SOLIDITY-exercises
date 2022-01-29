pragma solidity ^0.5.0; 
  
contract forLoop { 
    
    uint[] public myArray;
    uint public baseNumber = 9;
    function createArray() public returns(uint[] memory) {
        for (uint256 index = 0; index < 10; index++) {
            baseNumber = baseNumber + 7;
            myArray.push(baseNumber);
        }
        return myArray;
    }
}