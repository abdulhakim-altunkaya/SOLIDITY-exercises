pragma solidity >=0.8.7;

contract myContract { 

   function f1(bool arg1, uint arg2) returns(uint);
}

contract YourContract {
  function doYourThing(address addressOfA) public returns(uint) {
    A my_a = A(addressOfA);
    return my_a.f1(true, 3);
  }
}