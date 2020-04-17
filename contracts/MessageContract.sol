pragma solidity ^0.5.0;

contract MessageContract{
    address public owner = msg.sender;
    uint  public message = 55;

    modifier ownerOnly(){
        require(msg.sender == owner);
        _;
    }

    function print() public view returns (uint){
        return (message);
    }

    function steMessage(uint _message) public ownerOnly(){
        message = _message;
    }
}