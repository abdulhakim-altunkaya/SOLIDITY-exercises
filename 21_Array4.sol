pragma solidity >=0.8.7;

// This contract will get the highest number of an array
contract GetHighestNumber {
    uint[3] public myArray = [42, 20, 36];
    uint save = 0;

    function getHighest() public view returns(uint[] memory) {
        for (uint256 index = 0; index < myArray.length; index++) {
            if (myArray[index] >= save) {
                save = myArray[index];
            } else {
                save;
            }
        }
        return save;
    }

}