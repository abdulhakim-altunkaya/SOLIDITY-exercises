// SPDX-Licence-Identifier: MIT
pragma solidity >=0.8.7;

import "./35_Multicon2-2.sol";

contract A {
    address myAddress;

    function setAddress(address _newContract) external {
        myAddress = _newContract;
    }

    function getText(string memory _anyText2) external view returns(string memory) {
        B b = B(myAddress);
        return b.getString(_anyText2);
    }
}

