pragma solidity ^0.4.23;


// Creating a contract
contract Test {
// Declaring variable
string  str;


// Defining a constructor
constructor(string str_in){
str = str_in;
}
// Defining a function to
// return value of variable 'str'
function str_out() public view returns(string memory){
return str;
}
}

//Note:  after deploy it asked u to enter string then enter string over there and then see the output after clicking on str_out button