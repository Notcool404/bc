#A)Contract:
// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.4;

contract C {
    // private state variable
    uint256 private data;

    // public state variable
    uint256 public info;

    // constructor
    constructor() {
        info = 10;
    }

    // private function
    function increment(uint256 a) private pure returns (uint256) {
        return a + 1;
    }

    // public function
    function updateData(uint256 a) public {
        data = a;
    }

    function getData() public view virtual returns (uint256) {
        return data;
    }

    function compute(uint256 a, uint256 b) internal pure returns (uint256) {
        return a + b;
    }
}

// Derived Contract
contract E is C {
    uint256 private result;

    function getComputedResult() public returns (uint256) {
        result = compute(3, 5);
        return result;
    }

    function getResult() public view returns (uint256) {
        return result;
    }

    function getData() public view override returns (uint256) {
        return info;  // Accessing inherited public variable directly
    }
}



#B)Inheritance:
// SPDX-License-Identifier: GPL-3.0 
// Single Inheritance
pragma solidity ^0.8.0;

// Defining contract
contract parent {
    // Declaring internal
    // state variable
    uint256 internal sum;

    // Defining external function
    // to set value of internal
    // state variable sum
    function setValue() external {
        uint256 a = 20;
        uint256 b = 20;
        sum = a + b;
    }
}

// Defining child contract
contract child is parent {
    // Defining external function
    // to return value of
    // internal state variable sum
    function getValue() external view returns (uint256) {
        return sum;
    }
}

// Defining calling contract
contract caller {
    // Creating child contract object
    child cc = new child();

    // Defining function to call
    // setValue and getValue functions
    function testInheritance() public {
        cc.setValue();
    }

    function result() public view returns (uint256) {
        return cc.getValue();
    }
}



#C)Constructors:
// SPDX-License-Identifier: GPL-3.0 
pragma solidity ^0.8.0;
contract Base {
    uint256 data;

    constructor(uint256 _data) public {
        data = _data;
    }

    function getresult() public view returns (uint256) {
        return data;
    }
}

contract Derived is Base(5) {
    constructor() public {}
}



// Indirect Initialization of Base Constructor
// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract Base {
    uint256 data;

    constructor(uint256 _data) public {
        data = _data;
    }

    function getresult() public view returns (uint256) {
        return data;
    }
}

contract Derived is Base {
    constructor(uint256 _info) public Base(_info * _info) {}
}




#D)Abstract Contracts:
// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

abstract contract Calculator {
    function getResult() public view virtual returns (uint256) {
        return 0;  // Default implementation
    }
}

contract Test is Calculator {
    function getResult() public view override returns (uint256) {
        uint256 a = 4;
        uint256 b = 2;
        uint256 result = a + b;
        return result;
    }
}




#E)Interfaces:
// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

interface Calculator {
    function getResult() external view returns (uint256);
}

contract Test is Calculator {
    constructor() {}

    function getResult() external pure override returns (uint256) {
        uint256 a = 5;
        uint256 b = 2;
        uint256 result = a + b;
        return result;
    }
}

