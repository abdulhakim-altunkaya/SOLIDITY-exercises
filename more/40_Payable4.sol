// SPDX-Licence-Identifier: MIT

pragma solidity >=0.8.7;

contract Payable4 {
    mapping(uint => address) public accounts;

    function addToMapping(uint _myOrder, address _myAddress) external {
        accounts[_myOrder] = _myAddress;
    }


}

