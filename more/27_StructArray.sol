pragma solidity >=0.8.7;

contract Crud {
    struct UserStruct {
        uint id;
        string name;
    }
    UserStruct[] public myArray;
    uint public indexId;


}