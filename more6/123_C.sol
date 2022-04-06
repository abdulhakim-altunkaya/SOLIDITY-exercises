//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7;

import "./121_A.sol";

contract C {

    function foo1(address otherContract) external view returns(string memory){
        return A(otherContract).myWord();
    }

    function foo2(address otherContract, string memory a) external {
        A(otherContract).changeWord(a);
    }
}