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

    function getStruct() external view returns(Struct memory) {
        return flower;
    }
    function getStructValue() external view returns() {

    }
}