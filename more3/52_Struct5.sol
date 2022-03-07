//SPDX-Licence-Identifier: MIT

pragma solidity 0.8.7;

contract Struct5 {
    struct Cars {
        string brand;
        uint price;
        string color;
    }

    Cars myCar1 = Cars("BMW", 7000, "blue");
    Cars myCar2 = Cars("BMW", 15750, "black");

    function changeCarProperties(string memory _color) external {
        myCar1.color = _color;
    }

    function getCars() external view returns(Cars memory){
        return myCar1;
    }
}