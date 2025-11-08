// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CalculatorUint {
    
    uint  firstNumber;
    uint  secondNumber;
    int  intnumber;
    int   intNumber2;
    uint public land;
    bool myBool = true;
    uint[3] public numbers=[1,2,3];           
    
    
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

    function setintnumber(int _treat) public {
        intnumber = _treat;
    }

    function setintnumber2(int _sreat) public {
        intNumber2 = _sreat;
    }

     function ads() public view returns (int) {
        return intnumber +  intNumber2;
    }

    function subtracs() public view returns (int) {
   
      return intnumber +  intNumber2;
    }

    function multipls() public view returns (int) {
       return intnumber +  intNumber2;
    }

    function divids() public view returns (int) {
        
        return intnumber +  intNumber2;
    }

    function sumNumbers(uint _n) public pure returns (uint) {
        uint sum = 0;
        for (uint i = 1; i <= _n; i++) {
            sum += i;
        }
    }

    function countWhile(uint _n) public pure returns (uint) {
        uint count = 0;
        uint i = 0;
        while (i < _n) {
            count++;
            i++;
        }
        return count;
    }
    function getthearray(uint manchi) public view returns (uint){
        return numbers [manchi];
    }
    
}
