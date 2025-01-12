// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

contract MyContract {
    address public owner;
    uint public balance;


    constructor(){
        owner = msg.sender;
    }

    function depositEther() external payable {
        balance += msg.value;
    }

    function withdrawEther (uint amount) external {
        require(amount <= balance, "Only Owner Can Call This Function" );
        require(amount <= balance, "Amount Exceeds Balance");
        balance -amount;
        payable(owner).transfer(amount);
    }

}
