pragma solidity >= 0.8.7;

contract Constructor {
    string public myWord;
    string public myWord2;

    constructor() public {
        myWord = "Constructor works";
        myWord = "Solidity is nice";
    }

    function getWord() public view returns(string memory) {
        return myWord2;
    }
}