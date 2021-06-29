// SPDX-License-Identifier: MIT
pragma solidity ^0.7.6;

contract Wallet{
    event Deposit(address sender, uint amount, uint balance);
    event Withdraw(uint amount, uint balance);
    event Transfer(address to, uint amount, uint balance);
    
    address payable public owner;
    
    constructor() public payable {
        owner = msg.sender;
    }
    
    modifier onlyOwner() {
        require(msg.sender == owner, "Not Owner");
        _;
    }
    
    function deposit() public payable {
        emit Deposit(msg.sender, msg.value, address(this).balance);
    }
    
    function notPayable() public {
        
    }
    
    function withdraw(uint _amount) public onlyOwner {
        owner.transfer(_amount);
        emit Withdraw(_amount, address(this).balance);
    }
    
    function transfer(address payable _to, uint _amount) public onlyOwner {
        // tansfer function below in a build-in function and only appliable to payable address
        _to.transfer(_amount);
        emit Transfer(_to, _amount, address(this).balance);
    }
    
    function getBalance() public view returns (uint){
        return address(this).balance;
    }
    
}