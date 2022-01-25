pragma solidity >=0.8.7;

contract Date {

    uint public lastMoment;
    uint public minutesOne;

    function setTime() public {
        lastMoment = block.timestamp;
    }
    function setTime2() public {
        minutesOne = 1 minutes;
    }
    
    function isTimeFinished() public view returns(bool) {
        return(block.timestamp > (lastMoment + minutesOne) );
    }
    
}