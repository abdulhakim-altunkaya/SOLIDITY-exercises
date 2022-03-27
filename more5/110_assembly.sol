//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7;

contract Assembly {
    function addNumbers() external pure returns(uint){
        uint a = 1;
        uint b = 2;
        uint c;
        assembly {
            c:= add(a, b)
        }
        //Above, instead of saying "uint c = a+ b;", we used assembly
        return c;
    }
}

/*assembly is a low level sub-language of solidity that let us to 
directly manipulate EVM opcodes.

Solidity code that we write is compiled(by whom?) to a "low-level series of instructions" to be understood by the EVM. 
This low level series of instructions are called opcodes. Opcodes are also called elementary operations.

In total there are over 100 opcodes. When we use Assembly, we can directly manipulate these opcodes.
some opcodes: add(), mul(), sub(), div(), ...

Assembly is used for cases when regular solidity is not enough to fix your
problem. So, actually it is not much used I guess.

Assembly manipulates memory and for this reason it is dangerous. So, better to avoid assembly
(Not sure if I understand this part. Whats wrong if it manipulates memory?)

assembly must be written inside solidity functions. 
assembly language contains: let, if, for loop, ":=" instead of "=",
assembly language does not contain semicolons ";"
"let" keyword helps to define local variables inside assembly code block



*/