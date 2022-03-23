//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7;

contract Caller {
    //EXAMPLE 1 : two different ways of same thing
    /*Receiver: is the contract name below
    otherContract: address of the contract below
    anyNumber: any number we want 
    setNumber: the function that we call
    After this, myNumber value will update.*/
    function callFunction1a(address otherContract, uint anyNumber) external {
        Receiver(otherContract).setNumber(anyNumber);
    }
    function callFunction1b(Receiver otherContract, uint anyNumber) external {
        otherContract.setNumber(anyNumber);
    }

    //EXAMPLE 2:
    function callFunction2a(Receiver otherContract) external view {
        otherContract.getNumber();
    }

}




contract Receiver {
    //EXAMPLE 1
    uint public myNumber;
    function setNumber(uint _n) external {
        myNumber = _n;
    }

    //EXAMPLE 2
    function getNumber() external view returns(uint) {
        return myNumber;
    }
    
}