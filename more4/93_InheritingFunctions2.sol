//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7;

contract A {
    /*We can call a parent function from child contract.
    For that functions must be declared as "public". 
    Way 1 and 3 is only for understanding the topic. This function calling
    is actually used for events(Way-2). */
    
    //WAY-1: write functions
    string public myword = "something";
    function baz() public virtual {
        myword = "something A";
    }
    //WAY-2: events
    event Log(string mytext);
    function foo() public virtual {
        emit Log("hello from A");
    }

    //WAY-3: return functions
    function bar() public pure virtual returns(string memory) {
        return "good evening from A";
    }
}

contract B is A{
    
    function bar() public pure override returns(string memory) {
        A.bar();
        return "good evening from B";
    }
    function baz() public override {
        myword = "something B";
        A.baz();
    }

    function foo() public virtual override {
        emit Log("hello from B");
        A.foo();
    }
}
