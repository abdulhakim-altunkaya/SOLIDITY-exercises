pragma solidity >=0.8.7;

contract Arrays {
    uint[] public ids;

    function setIds(uint id) public {
        ids.push(id);
    }

    function getIds(uint indexNumber) public view returns(uint) {
        return ids[indexNumber];
    }
}