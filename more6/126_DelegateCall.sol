//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7;

contract A{

    uint public num;
    address public sender;
    uint public value;

    function setVars(uint _num) external payable{
        num = _num;
        sender = msg.sender;
        value = msg.value;
    }

}

contract B{

    uint public num;
    address public sender;
    uint public value;

    function setVars(address _test, uint _num) external payable{
        (bool success, ) = _test.call(abi.encodeWithSignature("setVars(uint)", _num));
        require(success, "failed to call");
    }
}

