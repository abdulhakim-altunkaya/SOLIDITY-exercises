pragma solidity ^0.8.7;

contract ArrayDeclaration {
    function getArray() external pure {
        uint[] memory myArray = new uint[] (3);

        myArray[0] = 5;
        myArray[2] = 4488448844884488;
        myArray[1] = 70;

    }

    function getArray() public view returns(uint[] memory) {
        return myArray
    }
}