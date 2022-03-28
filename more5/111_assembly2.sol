//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7;

contract Assembly {

    function assemblySize(address a) external view returns(string memory){
        uint size;
        address myAddress = a;
        assembly {
           size := extcodesize(myAddress)
        }
        if(size == 0) {
            return "regular";
        } else {
            return "smart contract";
        }
        /*extcodesize() is used to tell us if an address is smart contract or a regular address.
        This is done by checking the "code" field of an address if it is empty or not. If empty("0"), then 
        this is regular address. If not empty, then it is smart contract address.
         */
    }
}
