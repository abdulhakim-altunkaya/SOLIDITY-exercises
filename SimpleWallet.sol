pragma solidity >0.5.13;

contract SimpleWallet {
    mapping(address => uint) public balanceReceived;

    function receiveMoney() public payable {
        assert(balanceReceived[msg.sender] + msg.value >= balanceReceived[msg.sender]);
        balanceReceived[msg.sender] += msg.value;
    }
    receive() external payable {
        receiveMoney();
    }
}