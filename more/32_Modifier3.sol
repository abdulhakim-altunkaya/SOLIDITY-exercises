// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract A {

  address myAddress;

  function setAddressB(address _addressOtherContracts) external {
    myAddress = _addressOtherContracts;
  }

  function callHelloWorld() external view returns(string memory) {
    B b = B(myAddress);
    return b.helloWorld();
  }

  function callGetNumber() external view returns(uint) {
    C c = C(myAddress);
    return c.getNumber();
  }
  
}

contract B {
  
  function helloWorld() external pure returns(string memory) {
    return "Hello World";
  }

}

contract C {
  function getNumber() external pure returns(uint) {
    return 666;
  }
}