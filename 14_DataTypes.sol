pragma solidity >0.5.0;


contract DataTypes {
    
    uint myNumber = 9;
    int yourNumber = -68;
    uint8 herNumber = 17;
    bool isSolidityCool = true;
    address owner = msg.sender;
    bytes32 byteMes = "hello byte";
    string stringMes = "hello string";
    
    function getVariables() public view returns(uint, int, uint8, bool, address, bytes32, string memory) {
        return( myNumber, yourNumber, herNumber, isSolidityCool, owner, byteMes, stringMes);
    }
}