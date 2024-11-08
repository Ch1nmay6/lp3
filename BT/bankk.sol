// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Banking{
    mapping (uint => uint) public balance;
    mapping (uint => bool) public accountExist;

    function createAccount (uint account) public {
        require(!accountExist[account], "Account Already Exist");
        accountExist[account] = true;
        balance[account] = 0;
    }

    function Deposit (uint account, uint amount) public {
        require(accountExist[account], "Account Does not Exist");
        require(amount > 0, "Amount should be more than 0 ");
        balance[account] += amount;
    }

    function Withdraw (uint account, uint amount) public {
        require(accountExist[account], "Account Does not Exist");
        require(amount > 0, "Amount should be more than 0 ");
        balance[account] -= amount;
    }

    function showBalance (uint account) public view returns( uint ) {
        require(accountExist[account], "Account Does not Exist");
        return balance[account];
    }
}
