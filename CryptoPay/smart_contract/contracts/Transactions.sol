// SPDX-License-Identifier: UNLICENSED
//Version of solidity
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract Transactions {
    uint256 transactionCount;//Hold the number of Trasactions

    //Act as Function
    event Transfer(address from, address receiver, uint amount, string message, uint256 timestamp, string keyword);
  
    //Act as an Object
    struct TransferStruct {
        address sender;
        address receiver;
        uint amount;
        string message;
        uint256 timestamp;
        string keyword;
    }
    //Array of all the Transactions with type TransferStruct
    TransferStruct[] transactions;

    //Making a public Function 
    function addToBlockchain(address payable receiver, uint amount, string memory message, string memory keyword) public {
        transactionCount += 1;//Increamenting the transactioncount
        transactions.push(TransferStruct(msg.sender, receiver, amount, message, block.timestamp, keyword));//Adding the transaction to the transaction array 

        emit Transfer(msg.sender, receiver, amount, message, block.timestamp, keyword);//Command to execute the transfer event
    }
    //A function with return type of TransferStruct[] to return all the transactions
    function getAllTransactions() public view returns (TransferStruct[] memory) {
        return transactions;
    }
    //Return type of integer with number of transacactions happened
    function getTransactionCount() public view returns (uint256) {
        return transactionCount;
    }
}