// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract crowd
{
struct crowdsource
{
string name;
address ad;
uint value;
}
address public manager;
uint public mincontribution;
address[] public approvals;
receive () external payable{}
function campaign(uint min)public
{
manager=msg.sender;
mincontribution=min;
}
function contribute(uint amount)payable external{
require(amount>mincontribution,"Invalid contribution");
approvals.push(msg.sender);
}
}
