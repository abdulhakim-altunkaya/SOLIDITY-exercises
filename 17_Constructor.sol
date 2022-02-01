pragama solidity >= 0.8.7;

contract Constructor {
    string public myWord;
    string public myWord2;

    function getWord() public view returns(string memory) {
        return myWord;
    }
}