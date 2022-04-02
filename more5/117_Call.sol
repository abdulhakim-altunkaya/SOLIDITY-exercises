//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7;

/*Call is generally used with sending ether.
It helps to call  */
contract TestCall {
    string public message1;
    uint public number1;

    event LogSomething(string message2);

    fallback() external payable {
        emit LogSomething("someone has sent ether");
    }

    function foo(string memory message3, uint number2) external payable returns (bool, uint) {
        message1 = message3;
        number1 = number2;
        return(true, 999);
    }

    function getBalance() external view returns(uint){
        return address(this).balance;
    }

    function sendEther(address payable _to) external payable {
        (bool success, ) = _to.call{value: 123}("");
        require(success, "sending ether failed");
    }

}

contract Call {
    bytes a;
    function call1(address payable otherContract, string memory message4, uint number3) external {
        TestCall(otherContract).foo(message4, number3);
    }

    function call2(address payable otherContract) external {
        (bool success, bytes memory data) = otherContract.call{value: 3333, gas: 5000}(abi.encodeWithSignature("foo(string,uint256)","helloooo", 11111));
        require(success, "failed to call2");
        a = data;
    }

}
