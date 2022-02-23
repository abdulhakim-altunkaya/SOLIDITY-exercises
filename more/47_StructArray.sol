//SPDX-Licence-Identifier

pragma solidity >=0.8.7;

contract StructArray {

    struct Flowers {
        string name;
        string color;
    }
    Flowers flower;

    function setValue() external {
        flower = Flowers("rose", "white");
    }

    Flowers[] myArray;
    function addArray() external {
        myArray.push(flower);
    }

    function getArray() external view returns(Flowers[] memory) {
        return myArray;
    }

    //you cannot return a record of a struct. You can only
    // return an individual data type in struct. In this below
    // it is flower name which is a string.
    function getName() external view returns(string memory) {
        return flower.name;
    }

    function getColor() external view returns(string memory) {
        return flower.color;
    }

}