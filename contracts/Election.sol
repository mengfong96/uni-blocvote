pragma solidity ^0.5.0;

contract Election {
    // Model a Candidate
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }

    // Store accounts that have voted
    mapping(address => bool) public voters;
    // Store Candidates
    // Fetch Candidate
    mapping(uint => Candidate) public candidates;
    // Store Candidates Count
    uint public candidatesCount;

    // voted event
    event votedEvent (
        uint indexed _candidateId
    );

    constructor() public {
        addCandidate("Daniel Soon Yuen Hao");
        addCandidate("Nur Iman Aqilah");
        addCandidate("Sasha Shamsuddin Lee");
        addCandidate("Mohammad Syazwan");
        addCandidate("Nurin Izzati binti Noor Azman");
        addCandidate("Abdul Wahab bin Hosni");
        addCandidate("Abdullah Hakim");
        addCandidate("Roy Wong Kim Jie");
        addCandidate("Raymond Chua Yong Xiang");
        addCandidate("Lim Jia Yon");

    }

    function addCandidate (string memory _name) public {
        candidatesCount ++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }

    function vote (uint _candidateId) public {
        // require that they haven't voted before
        require(!voters[msg.sender]);

        // require a valid candidate
        require(_candidateId > 0 && _candidateId <= candidatesCount);

        // record that voter has voted
        voters[msg.sender] = true;

        // update candidate vote Count
        candidates[_candidateId].voteCount ++;

        // trigger voted event
        emit votedEvent(_candidateId);
    }
}
