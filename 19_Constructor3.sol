pragma solidity >=0.8.7;

contract RandomConstructor {

    uint public myNumber1;
    

    function getDifficulty() public {
        myNumber1 = block.difficulty;
    }

}