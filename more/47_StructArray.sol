//SPDX-Licence-Identifier

pragma solidity >=0.8.7;

contract StructArray {

    struct Flowers {
        string name;
        string color;
    }
    Flowers flower;
    Flowers flower2;

    function setValue() external {
        flower = Flowers("rose", "white");
        flower2 = Flowers("tulip", "blue");
    }

    Flowers[] myArray;
    function addArray() external {
        myArray.push(flower);
        myArray.push(flower2);
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