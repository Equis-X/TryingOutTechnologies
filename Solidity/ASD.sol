pragma solidity ^0.8.7;

contract scontract{
/*  // 1ra parte

    int public constant con = 1;
    string public stringval = "MyVal";
    bool public mybool = true;
    
    uint public val = 0;
    
    constructor() public{}
    
    function set(uint _val) public {
        val = _val;
    }*/
    
/*  // 2da parte
    
    enum State { Waiting, Ready, Active }
    State public state;
    
    constructor() public{
        state = State.Waiting;
    }
    
    function activate() public {
        state = State.Active;
    }
    
    function isActive() public view returns(bool){
        return state == State.Active;
    }
    
    // SEPARATION
    
    mapping(uint256 => person) public people;
    uint256 public peopleCount = 0;
    
    struct person{
        uint256 id;
        string _fn;
        string _ln;
    }
    
    function addPers(string memory _fn, string memory _ln) public{
        peopleCount++;
        people[peopleCount] = person(peopleCount, _fn, _ln);
    }*/
}