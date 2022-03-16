//SPDX-Licence-Identifier: MIT

pragma solidity 0.8.7;

contract Struct5 {
    struct Cars {
        string brand;
        uint price;
        string color;
    }

    Cars myCar1 = Cars("BMW", 7000, "blue");
    Cars myCar2 = Cars("BMW", 15750, "black");
    Cars myCar3 = Cars("Toyota", 6300, "hay");
    Cars myCar4 = Cars({price: 5000, color: "maze", brand:"mustang"}); //order doesnt matter in this way
    Cars myCar5; // car values will have default values: "", 0, ""

    // Struct Variable ARRAY operations.
    // myArray.push(myCar2); this line outside the function 
    // will not work and give error. You must place it inside the function. 
    Cars[] myArray;
    function addArray() external {
        myArray.push(myCar2);//
    }
    function getArray() external view returns(Cars[] memory){
        return myArray;
    }


    // UPDATE: struct variable operations. 
    function changeCarProperties(string memory _color) external {
        myCar1.color = _color;
    }
    // CREATE: create struct variables in memory
    // GET: return multiple struct variables which are in memory
    function createStructVar() external pure returns(Cars memory, Cars memory, Cars memory){
        Cars memory myCar6 = Cars("Toyota", 6300, "hay");
        Cars memory myCar7 = Cars({price: 5000, color: "maze", brand:"mustang"}); //order doesnt matter in this way
        Cars memory myCar8; // car values will have default values: "", 0, ""
        return (myCar8, myCar7, myCar6);
    }

    // GET: return a struct variable which is in storage(state variable)
    function getCars() external view returns(Cars memory){
        return myCar1;
    }
}