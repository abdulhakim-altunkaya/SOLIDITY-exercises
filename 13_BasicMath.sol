pragma solidity >0.5.0;
import "./SafeMath.sol";

contract BasicMath {

    using SafeMath for uint256;

    uint256 public variable_add = 50;
    uint256 public variable_div = 50;
    uint256 public variable_sub = 50;
    uint256 public variable_mul = 50;
    uint256 public variable_mod = 50;

    function basicMath() public {
        variable_add.add(9);
        variable_sub.sub(9);
        variable_mul.mul(9);
        variable_div.div(9);
        variable_mod.mod(9);
    }

}