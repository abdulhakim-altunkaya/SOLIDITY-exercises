//SPDX-License-Identifier: MIT

pragma solidity >=0.8.18;

contract Randomness {

    function getRandom() external view returns(uint) {
        return block.prevrandao;
    }

}