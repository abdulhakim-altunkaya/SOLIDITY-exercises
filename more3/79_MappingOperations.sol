// SPDX-License-Identifier: GPL-3.0

contract MappingOps {
    mapping(address => uint) balances;

    //1. mappings can become values of another mapping
    mapping(address => mapping(address=>bool)) isFriend;

    //2. add values to this mapping
    function addMapping(uint x) external {
        balances[msg.sender] = x;
    }

    //3. get values from mapping
    function getMapping() external view returns(uint) {
        return balances[msg.sender];
    }

    //4. get values from a specific key:
    function getMapping2() external view returns(uint) {
        return balances[address(1)];
    }

}