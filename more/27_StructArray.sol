pragma solidity >=0.8.7;

contract Crud {
    struct UserStruct {
        uint id;
        string name;
    }
    UserStruct[] public myArray;
    uint public indexId;

    function createUser(string memory newName) public {
        myArray.push(UserStruct(indexId, newName));
        indexId++;
    }
    function getAllArray() public view returns(UserStruct[] memory) {
        return myArray;
    }

    function getElement(uint index) public view returns(UserStruct memory) {
        for(uint i=0; i<myArray.length; i++) {
            if(i == index) {
                return myArray[index];
            }
        }
    }

    function updateName(uint number2, string memory freshName) public {
        for(uint i=0; i<myArray.length; i++) {
            if(i == number2) {
                myArray[i].name = freshName;
            }
        }
    }
}