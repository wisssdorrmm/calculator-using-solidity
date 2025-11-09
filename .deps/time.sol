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

    

    function getUsername(address _user) public view returns (string memory) {
        return users[_user].username;
    }
}
