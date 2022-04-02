//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7;

contract TestCall {
    string public message1;
    uint public number1;

    event LogSomething(string message2);

    fallback() external payable{
        emit LogSomething("easy money");
    }

    function foo(string memory message3, uint number2) external payable returns(bool, uint){
        message1 = message3;
        number1 = number2;
        return (true, 999);
    }
}

contract Call{
    bytes public data;
    function callFoo(address otherContract) external {
        (bool success, bytes memory _data) = otherContract.call{value:111}(abi.encodeWithSignature("foo(string,uint256)", "call foo", 123));
        require(success, "call failed");
        data = _data;
    }
    //We need this fallback, because if not we cannot use above function
    //because above function is spending gas when we click on it. And we have 0 in our account.
    //So I put this fallback to first transfer some ether to the contract by using "transact"
    //Then I called callFoo and it worked fine. 
    fallback() external payable{}

}