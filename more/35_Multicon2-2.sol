// SPDX-Licence-Identifier: MIT
pragma solidity >=0.8.7;

contract InterfaceB {
    function getString(string memory _anyText) external pure returns(string memory);
}

contract B {
    function getString(string memory _anyText) external pure returns(string memory) {
        return _anyText;
    }
}