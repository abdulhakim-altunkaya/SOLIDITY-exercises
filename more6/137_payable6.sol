//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7;

contract A {

    function getEther() external payable{}

    function getBalance() external view returns(uint) {
        return address(this).balance;
    }

    //This is a great function. It transfers all ether inside
    //this contract to any address. In this case the address is the msg.sender
    function withdraw() external {
        address payable _owner = payable(msg.sender);
        _owner.transfer(address(this).balance);
    }

    //This is a great function. It transfers all ether inside
    //this contract to any address. In this case the address is the msg.sender
    function withdraw() external {
        address payable _owner = payable(msg.sender);
        _owner.transfer(address(this).balance);
    }
}

contract B {
    function foo(address otherContract, uint _value) external payable {
       A(otherContract).getEther{value: _value}();
    }

    function foo2(address otherContract, uint _value) public payable {
       (bool success, ) = otherContract.call{value: _value}("");
       require(success, "failed");
    }

    function getBalance() external view returns(uint) {
        return address(this).balance;
    }

    fallback() external payable{}
    receive() external payable{}
}