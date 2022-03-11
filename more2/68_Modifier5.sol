//SPDX-Licence-Identifier: GPL-3.0;

pragma solidity >=0.8.7;

contract ModifierTest {

    bool public paused;
    uint public myNumber;

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


}
