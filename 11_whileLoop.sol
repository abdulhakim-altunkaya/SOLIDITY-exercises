pragma solidity ^0.5.0; 
  
contract Types { 
    // creating a simple dynamic array and making it public so that you can see it in remix
    uint[] public data; 
    
    uint j = 0;

    function loop() public returns(uint[] memory){
        while(j < 100) {
            j = j + 7;
            data.push(j);
        }
        return data;

    }

}