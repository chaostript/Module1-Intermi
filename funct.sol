// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import "hardhat/console.sol";

contract ErrorHandling {
    uint public age;

    function setAge(uint _age) public{
        age = _age;
    }
    function Assert() public view{
        assert(age >= 18 && age <= 80);
        console.log("Congratulations! You are eligible to Learner License.");
    }

    function Require() public view{
        require(age >= 18, "You must be at least 18 years old to be eligible." );
        console.log("Congratulations! You are eligible for LR .");
    }

    function Revert() public view{
        if (age < 18 || age > 80){
            revert("You must be between 18 and 80 years old to be eligible to Driving License");
        }
        else{
            console.log("Congratulations! You qualified for License.");
        }
    }
}
