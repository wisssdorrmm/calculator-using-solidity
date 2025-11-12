// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UserAuth {
    struct User {
        address walletAddress;
        string username;
        bool isRegistered;
    }
    string wisdom;
    int timdoc;


    mapping(address => User) public users;

    event UserRegistered(address userAddress, string username);

    function registerUser(string memory _username) public {
        require(!users[msg.sender].isRegistered, "User already registered");

        users[msg.sender] = User(msg.sender, _username, true);
        emit UserRegistered(msg.sender, _username);
    }

    function isUserRegistered(address _user) public view returns (bool) {
        return users[_user].isRegistered;
    }

    function getUsername(address _user) public view returns (string memory) {
        return users[_user].username;
    }

   uint[] public numbers;

    // Add numbers to the array
    function addNumber(uint _num) public {
        numbers.push(_num);
    }

    
    // Swap two elements by their indexes
    function swap(uint index1, uint index2) public {
        require(index1 < numbers.length && index2 < numbers.length, "Invalid index");

        uint temp = numbers[index1];
        numbers[index1] = numbers[index2];
        numbers[index2] = temp;
    }

    // Get the entire array
    function getNumbers() public view returns (uint[] memory) {
        return numbers;
    }

}
