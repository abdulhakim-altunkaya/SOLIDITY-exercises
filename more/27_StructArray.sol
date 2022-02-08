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

    function getElement(uint number1) public view returns(UserStruct memory) {
        for(uint i=0; i<myArray.length; i++) {
            if(i == number1) {
                return myArray[number1];
            }
        }
    }

    function loop(uint number4) internal view returns(UserStruct) {
        for(uint i=0; i<myArray.length; i++) {
            if(i == number4) {
                return i;
            }
        }
    }

    function updateElement(uint number2, string memory freshName) public {
        uint i = loop(number2);
        myArray[i].name = freshName;

    }

    function deleteElement(uint number3) public {
        for(uint i=0; i<myArray.length; i++) {
            if(i == number3) {
                delete myArray[i];
            }
        }
        revert("user does not exist");
    }





}