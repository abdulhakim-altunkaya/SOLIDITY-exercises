//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7;

contract ArrayOperations {
    //create a dynamic size array
    uint[] myArray;

    // WAY-1 Adding elements
    function addArray(uint a, uint b, uint c) external {
        myArray = [a, b, c];
    }

    // WAY-2 Adding elements
    function addArray2(uint d) external {
        myArray.push(d);
    }

    // Updating array
    function updateArray(uint x) external {
        myArray[1] = x;
    }

    // POP AND DELETE
    // Pop removes last element and shrinks the size of array by 1.
    function popArray() external {
        myArray.pop();
    }   

    // Delete does not remove the element, it returns it to its 
    // default value which is "0" in uint[] case. So, array length remains the same.
    function deleteArrayElement(uint m) external {
        delete myArray[m];
    }

    // REMOVE ELEMENT WAY 1
    // To pop an element from any place inside the array:
    // require statements makes sure our for loop will not collapse
    // if somebody tries to delete an index higher than the array length
    // if our array has only 1 element (in this case, "0<0" is fine actually, it wont give error)
    function removeArray1(uint x) external {
        require(myArray.length > 0, "array has no value");
        require(x < myArray.length, "you can delete only existing elements");
        uint myLength = myArray.length - 1;
        for(uint myIndex = x; myIndex<myLength; myIndex++){
            myArray[myIndex] = myArray[myIndex+1];
        }
        myArray.pop();
    }

    // REMOVE ELEMENT WAY 2
    // This way will remove the element but values INDEXES WILL BE MIXED. Last element will 
    // change place with target element. Target element will then be removed.
    function removeArray2(uint x) external {
        uint lastElIndex = myArray.length - 1;
        uint lastElValue = myArray[lastElIndex];
        myArray[lastElIndex] = myArray[x];
        myArray[x] = lastElValue;
        myArray.pop();
    }

    //This is a regular return for dynamic array
    // Returning a big array can drain all your gas. Keep this in mind in production.
    function getArray() external view returns(uint[] memory) {
        return myArray;
    }
}