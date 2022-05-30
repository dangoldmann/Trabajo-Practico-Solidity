pragma solidity ^0.8.10;

contract Superhero {
    string private _name;
    mapping(string => int) private _powers;
    address private _owner;

    constructor(string memory name_){
        _name = name_;
        _owner = msg.sender;
    }

    function name() public view returns(string memory){
        return _name;
    }

    function set_power(string memory power, int value) public{
        require(_owner == msg.sender,"Solo el creador puede setear poderes");
        _powers[power] = value;
    }

    function get_power(string memory power) public view returns (int){
        return _powers[power];
    }
}