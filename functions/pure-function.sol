pragma solidity ^0.5.0;
contract Test {
int public x=10; //global
int y=90;//state
function f1() public returns(int){
    //read and update is allowed
    x=100;
return x;
}
function f2() public view returns(int){
  //  x=100; //erro beacuse x is global/state
  //we can access but we cannot update state or global variable int view function
return x;
}
function f3() public pure returns(int){
    //we cannot access or update state or global variable in pure function
    int z=80;
return z;
}
}
