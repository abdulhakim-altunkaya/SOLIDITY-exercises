//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7;

interface IA {
    function myWord() external view returns(string memory);
    function changeWord(string memory a) external;
}

contract InterfaceCaller {

    function foo1(address otherContract) external view returns(string memory){
        return IA(otherContract).myWord();
    }

    function foo2(address otherContract, string memory a) external {
        IA(otherContract).changeWord(a);
    }
}