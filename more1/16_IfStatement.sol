pragma solidity >=0.8.7;

contract IfStatement {

    function writeHello2(string memory _word) public pure returns(string memory) {
        if(keccak256(bytes(_word)) == keccak256(bytes("Hello"))) {
            return "You have inserted the right word";
        } else {
            return "Wrong word. You should have said Hello. with H capital";
        }
    }

}