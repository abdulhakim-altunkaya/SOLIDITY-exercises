//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7;

/*You can call the function of another contract. But if the other contract is not on the 
same file, then you will need interface to call the other contract functions.*/

//Pay attention down, it is two I I
interface IInterfaceReceiver {
    function setNumber() external;
    function myNumber() external view returns(uint);
}

contract InterfaceCaller {
    function call1(address otherContract) external view returns(uint) {
        return IInterfaceReceiver(otherContract).myNumber();
    }
    function call2(address otherContract) external {
        IInterfaceReceiver(otherContract).setNumber();
    }
}
