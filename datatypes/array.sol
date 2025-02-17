// Solidity program to demonstrate
// accessing elements of an array

pragma solidity ^0.5.0;
function
// Creating a contract
contract Types {


// Declaring an array
uint[6] data;
uint x;


// Defining function to
// assign values to array
function array_example() public returns (uint[6] memory)
{


data  = [uint(10), 20, 30, 40, 50, 60];
}
function result() public view returns(uint[6] memory){
return data;
}
// Defining function to access
// values from the array
// from a specific index
function array_element() public view returns (uint){
uint x = data[2];
return x;
}
}
