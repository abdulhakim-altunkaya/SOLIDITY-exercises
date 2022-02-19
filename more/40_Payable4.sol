// SPDX-Licence-Identifier: MIT

pragma solidity >=0.8.7;

contract Payable4 {
    mapping(uint => address payable) public accounts;

    function addToMapping(uint _myOrder, address payable _myAddress) external {
        accounts[_myOrder] = _myAddress;
    }

    function makeTransaction(uint _accountOrder) external payable {
        address payable _to = accounts[_accountOrder];
        (bool sent, bytes memory data) = _to.call{value: msg.value}("");
        require(sent, "failed to send Ether");
    }

}
