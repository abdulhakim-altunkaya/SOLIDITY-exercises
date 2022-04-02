//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7;

/*Call is generally used with sending ether.
It helps to call  */
contract TestCall {
    string public message1;
    uint public number1;

    event LogSomething(string message2);

    //I need to add this to make sure contract can get ether for any function call
    fallback() external payable {
        emit LogSomething("someone has sent ether");
    }

    //This payable here only means that whenever we call this function, we can enter
    // some values to msg.value area and send it to the function contract.
    //Even we dont have fallback, the contract can receive ether by this function. 
    function foo(string memory message3, uint number2) external payable returns (bool, uint) {
        message1 = message3;
        number1 = number2;
        return(true, 999);
    }

    function getBalance() external view returns(uint){
        return address(this).balance;
    }

    //call method requires function to be payable
    function sendEther(address payable _to) external payable {
        (bool success, ) = _to.call{value: msg.value}("");
        require(success, "sending ether failed");
    }

}