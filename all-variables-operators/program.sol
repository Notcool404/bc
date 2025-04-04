pragma solidity ^0.5.0;

// Practical Title: Variables
contract SolidityTest {
    uint storedData; // State variable
    constructor() public {
        storedData = 10;
    }
    function getResult() public view returns(uint){
        uint a = 1; // local variable
        uint b = 2;
        uint result = a + b;
        return result; // access the state variable
    }
}

// Practical Title: State Variable
contract Solidity_var_Test {
    uint8 public state_var;
    constructor() public {
        state_var = 16;
    }
}

// Practical Title: Local Variable
contract Solidity_var_Local_Test {
    function getResult() public view returns(uint){
        uint local_var1 = 1;
        uint local_var2 = 2;
        uint result = local_var1 + local_var2;
        return result;
    }
}

// Practical Title: Global Variable
contract Test {
    address public admin;
    constructor() public {
        admin = msg.sender;
    }
}

// Practical Title: Arithmetic Operators
contract Solidity_Arithmetic {
    uint16 public a = 20;
    uint16 public b = 10;
    uint public sum = a + b;
    uint public diff = a - b;
    uint public mul = a * b;
    uint public div = a / b;
    uint public mod = a % b;
    uint public dec = --b;
    uint public inc = ++a;
}

// Practical Title: Relational Operators
contract Solidity_Relational {
    uint16 public a = 20;
    uint16 public b = 10;
    bool public eq = a == b;
    bool public noteq = a != b;
    bool public gtr = a > b;
    bool public les = a < b;
    bool public gtreq = a >= b;
    bool public leseq = a <= b;
}

// Practical Title: Logical Operators
contract Solidity_Logical {
    function Logic(bool a, bool b) public view returns(bool, bool, bool){
        bool and = a && b;
        bool or = a || b;
        bool not = !a;
        return (and, or, not);
    }
}

// Solidity program to demonstrate
// Bitwise Operator
pragma solidity ^0.5.0;

// Creating a contract
contract SolidityTest {
    // Declaring variables
    uint16 public a = 20;
    uint16 public b = 10;
    // to '&' value
    uint16 public and = a & b;
    // Initializing a variable
    // to '|' value
    uint16 public or = a | b;
    // Initializing a variable
    // to '^' value
    uint16 public xor = a ^ b;
    // Initilizing a variable
    // to '<<' value
    uint16 public leftshift = a << b;
    // Initializing a variable
    // to '>>' value
    uint16 public rightshift = a >> b;
    // Initializing a variable
    // to '~' value
    uint16 public not = ~a;
}

//Assignment Operator
// Solidity program to demonstrate
// Assignment Operator
pragma solidity ^0.5.0;

// Creating a contract
contract SolidityTest {
    // Declaring variables
    uint16 public assignment = 20;
    uint256 public assignment_add = 50;
    uint256 public assign_sub = 50;
    uint256 public assign_mul = 10;
    uint256 public assign_div = 50;
    uint256 public assign_mod = 32;

    // Defining function to
    // demonstrate Assignment Operator
    function getResult() public {
        assignment_add += 10;
        assign_sub -= 20;
        assign_mul *= 10;
        assign_div /= 10;
        assign_mod %= 20;
        return;
    }
}

//Conditional Operators
// Solidity program to demonstrate
// Conditional Operator
pragma solidity ^0.5.0;

// Creating a contract
contract SolidityTest {
    // Defining function to demonstrate
    // conditional operator
    function sub(uint256 a, uint256 b) public view returns (uint256) {
        uint256 result = (a > b ? a - b : b - a);
        return result;
    }
}

// Practical Title: While Loop
contract Pract3_While {
    function test(int s, int e) public view returns(int) {
        int i;
        int sum = 0;
        i = s;
        while(i <= e) {
            sum += i;
            i++;
        }
        return sum;
    }
}

// Practical Title: Do-While Loop
contract Pract3_DoWhile {
    function test(int s, int e) public view returns(int) {
        int i;
        int sum = 0;
        i = s;
        do {
            sum += i;
            i++;
        } while(i <= e);
        return sum;
    }
}

// Practical Title: For Loop
contract Pract3_For {
    function test(int s, int e) public view returns(int) {
        int i;
        int sum = 0;
        for(i = s; i <= e; i++) {
            sum += i;
        }
        return sum;
    }
}

// Practical Title: Break Statement
contract Solidity_Break {
    function getResult() public view returns(string memory) {
        uint a = 1;
        uint b = 2;
        uint result = a + b;
        return integerToString(result);
    }
    
    function integerToString(uint _i) internal pure returns (string memory) {
        if (_i == 0) {
            return "0";
        }
        uint j = _i;
        uint len;
        while (true) {
            len++;
            j /= 10;
            if (j == 0) {
                break;  // using break statement
            }
        }
        bytes memory bstr = new bytes(len);
        uint k = len - 1;
        while (_i != 0) {
            bstr[k--] = byte(uint8(48 + _i % 10));
            _i /= 10;
        }
        return string(bstr);
    }
}
