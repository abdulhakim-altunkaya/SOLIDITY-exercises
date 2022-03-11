//SPDX-Licence-Identifier: GPL-3.0;

pragma solidity >=0.8.7;

contract ModifierTest {

    bool public paused;
    uint public myNumber;

    //My first Modifier
    modifier checkPause(){
        require(!paused, "paused");
        _;
    }

    function startStop(bool _start) external{
        paused = _start;
    } 

    function decNumber() external checkPause{
        myNumber -=10;
    }

    function addNumber() external checkPause{
        myNumber +=30;
    }

    //Here I created another modifier
    modifier smallHundred(uint _n){
        require(_n<100, "number should be smaller than 100");
        _;
    }

    function anotherTest(uint _n) external pure smallHundred(_n) returns(uint){
        return 1000+_n;
    }
}
