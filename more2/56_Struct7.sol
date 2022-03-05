//SPDX-Licence-Identifier: MIT

pragma solidity >=0.8.7;

contract FunctionTest {
    struct Numbers {
        uint a;
        uint b;
    }

    Numbers myNumber;

    function getStruct(uint x, uint y) external {
        myNumber = Numbers(x, y);
    }

    function addNumbers(uint a, uint b) external pure returns(uint) {
        return a+b;
    }

    // here it is view because a pure function cannot read variables that are not inside the function. 
    function getStruct() external view returns(Numbers memory) {
        return myNumber;
    }

}