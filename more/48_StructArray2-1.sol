//SPDX-Licence-Identifier: MIT
pragma solidity >=0.8.7;

contract TodosList {
    struct Todos {
        string task;
        bool compeleted;
    }

    Todos[] public todosArray;

    function addTasks(string memory task, bool completion) external {
        todosArray.push(Todos(task, completion));
    }
    function getValues(uint indexNumber) external view returns(string memory) {
        return todosArray[indexNumber].task;
    }
}
}
