pragma solidity ^0.5.1;
contract Messenger{
    address owner;
    string [] messages;
    constructor() public
    {
        owner = msg.sender;
    }
     
    function add(string memory newMessage) public 
    {
            require(msg.sender == owner);
            messages.push(newMessage);
    } 
    function index() view public returns(uint) 
    {
            return messages.length;
    }
    uint v;
    function value(uint n1) public returns(uint)
     {
               v = n1;
    } 
    function display() view public returns(string memory)
    {
        return messages[v];
    }

}
