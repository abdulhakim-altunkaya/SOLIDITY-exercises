// SPDX-Licence-Identifier: MIT

pragma solidity >=0.8.7;

contract A {
    address myAddress;

    function setAddress(address _newContract) external {
        myAdress = _newContract;
    }

    function getText(string _anyText2) external view returns(string memory) {
        B b = B(myAddress);
        return b.getString(_anyText2);
    }
}

contract B {
    function getString(string _anyText) external pure returns(string memory) {
        return _anyText;
    }
}