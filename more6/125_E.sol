//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7;

import "./121_A.sol";

contract E {
    bytes public x;
    function foo2(address otherContract, string memory myWord) external {
        (bool success, bytes memory data) = otherContract.call(abi.encodeWithSelector(A.changeWord.selector, myWord));
        x = data;
        require(success, "call failed");
    }

}






    