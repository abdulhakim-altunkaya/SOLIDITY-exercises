// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract A {
  address myAddress;
  function setAddressB(address _addressB) external {
    myAddress = _addressB
  }
  function callHelloWorld() external view returns(string memory) {
    B b = B(myAddress);
    return b.helloWorld();
  }
}

contract B {
  
  function helloWorld() external pure returns(string memory) {
    return "Hello World";
  }

}