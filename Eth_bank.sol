// SPDX-License-Identifier: GPL-3.0
pragma solidity  ^0.8.0;

contract bank {
    address public owner;
    mapping(address => uint256) userBalances;

    constructor(){
        owner = msg.sender;
    }
    modifier onlyOwner(){
        require(msg.sender == owner, " you are not Owner of this contract");
        _;
    }
    
    function deposit() public payable returns(bool){
        require(msg.value >= 10 wei, "Amount not acceptable :Deposit amount is less than 10 wei");
        userBalances[msg.sender] += msg.value;
        return true;
    }
    
    function withdrawl(uint256 _amount)public payable returns(bool){
        require(msg.value <= userBalances[msg.sender], "your balance is low");
        userBalances[msg.sender] -= _amount;
        payable(msg.sender).transfer(_amount);
        return true;

    }

    function getBalance() public view returns(uint256){
        return userBalances[msg.sender];
    }
    function getTotalBalance() public view onlyOwner returns(uint256){
        return address(this).balance;
    }

    function totalWithdrawl(uint256 _amount) public payable onlyOwner returns(bool){
    
        payable(owner).transfer(_amount);
        return true;
    }
}