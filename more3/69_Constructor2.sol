//SPDX-Licence-Identifier: GPL-3.0;

pragma solidity >=0.8.7;

contract ConstructorTest {
    uint public myNumber;
    address public myAddress;

    //Constructors are used to initiate state variables.
    constructor(uint _n) {
        myAddress = msg.sender;
        myNumber = _n;
    }

    function getValues() external view returns(address, uint) {
        return (myAddress, myNumber);
    }
}