// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UserAuth {
    struct User {
        address walletAddress;
        string username;
        bool isRegistered;
    }

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
}
