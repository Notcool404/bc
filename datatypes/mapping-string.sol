pragma solidity ^0.5.0;


contract LedgerBalance {
mapping(address => string)  name;


function updateBalance() public returns(string memory){
name[msg.sender] = "Mrunali";
return name[msg.sender];
}
function printsender() public view returns(address) {
return msg.sender;
}
}
