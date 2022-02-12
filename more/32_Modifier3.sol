contract A {
    uint public myNumber = 14;
    function foo() view external returns(uint) {
        return myNumber;
    }
}

contract B {
  function callFoo(address addrA) external view returns(uint) {
    uint result = A(addrA).foo();
    return result;
  }
}