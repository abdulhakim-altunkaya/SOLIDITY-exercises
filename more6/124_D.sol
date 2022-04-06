//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7;

contract D {
    bytes public x;
    function foo1(address otherContract) external {
        (bool success, bytes memory data) = otherContract.call(abi.encodeWithSignature("changeWord(string)", "gigigi"));
        x = data;
        require(success, "call failed");
    }


}