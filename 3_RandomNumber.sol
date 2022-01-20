pragma solidity >=0.8.7;

contract Require {
    uint private firstNumber = 0;
    
    function createRandomNumber() {
        uint randomNumber = uint(keccak256(abi.encodePacked(now, msg.sender, firstNumber))) % 100;
        firstNumber = randomNumber;
    }
}
