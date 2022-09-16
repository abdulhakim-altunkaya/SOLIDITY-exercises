//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7;

contract Voting {

    string[] internal proposals;

    function addProposal(string memory _proposal) external {
        proposals.push(_proposal);
    }

    struct ResultStruct {
        string proposalName;
        uint yesVotes;
        uint noVotes;
    }
    ResultStruct record;
    mapping(uint => ResultStruct) public resultsMapping;
    function createRecord(uint index, uint yesVotes, uint noVotes) external {
        record = ResultStruct(proposals[index], yesVotes, noVotes);
    }
    function addResults(uint index) external {
        resultsMapping[index] = record;
    }

}