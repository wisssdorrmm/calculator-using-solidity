// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CalculatorUint {
    
    uint  firstNumber;
    uint  secondNumber;

    
    function setFirstNumber(uint _first) public {
        firstNumber = _first;
    }

    function setSecondNumber(uint _second) public {
        secondNumber = _second;
    }

    function add() public view returns (uint) {
        return firstNumber + secondNumber;
    }

    function subtract() public view returns (uint) {
   
        return firstNumber - secondNumber;
    }

    function multiply() public view returns (uint) {
        return firstNumber * secondNumber;
    }

    function divide() public view returns (uint) {
        
        return firstNumber / secondNumber;
    }
}
