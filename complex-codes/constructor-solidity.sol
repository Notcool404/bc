Constructor is a special function declared using constructor keyword. It is an optional function and is used to initialize state variables of a contract. Following are the key characteristics of a constructor.
A contract can have only one constructor.
A constructor code is executed once when a contract is created and it is used to initialize contract state.
A constructor can be either public or internal.
An internal constructor marks the contract as abstract.
In case, no constructor is defined, a default constructor is present in the contract.

pragma solidity ^0.5.0;
contract Base {
uint data;
constructor(uint _data) public {
data = _data;
}
function getresult()public view returns(uint){
return data;
}
}
contract Derived is Base (5) {
constructor() public {}
}
