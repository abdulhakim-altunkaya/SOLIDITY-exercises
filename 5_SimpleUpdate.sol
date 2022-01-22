pragma solidity>=0.4.22;

contract SimpleUpdate {
    uint data;

    function updateData(uint _data) external {
        data = _data;
    }
    function readData() external view returns(uint) {
        return data;
    }
}