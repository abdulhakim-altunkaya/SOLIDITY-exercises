//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.7;

contract EnumExample {

    //Here we create our Enum list with 4 Enum values
    enum Hamburgers {CHILDREN, SIZE1, SIZE2, SIZE3}

    //We create an Enum variable.
    Hamburgers public myChoice;

    //First way: set an Enum value for our Enum variable
    function setChoice() external {
        myChoice = Hamburgers(3);
    }

    //Second way: the same function above
    function setChoice2() external {
        myChoice = Hamburgers.SIZE3;
    }

    //Returning Enum variable
    function getEnum1() external view returns(Hamburgers) {
        return myChoice;
    }

    //Returning an Enum value
    function getEnum2() external pure returns(Hamburgers) {
        return Hamburgers(2);
    }

    //Returning an Enum value (same as above, written differently)
    function getEnum3() external pure returns(Hamburgers) {
        return Hamburgers.SIZE2;
    }

    //Return and make a math operation on Enum value. We need typecast Enum value.
    function getEnum4() external pure returns(uint8) {
        return uint8(Hamburgers.SIZE2) + 3;
    }

    //Create an Enum array named "myBurgers"
    Hamburgers[] myBurgers = [Hamburgers(2), Hamburgers(1)];
}