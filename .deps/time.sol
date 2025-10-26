// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TimeOfDay {
    function getTimeOfDay(uint256 hour) public pure returns (string memory) {
        require(hour < 24, "Hour must be between 0 and 23");

        if (hour >= 5 && hour < 12) {
            return "Morning";
        } else if (hour >= 12 && hour < 17) {
            return "Afternoon";
        } else if (hour >= 17 && hour < 21) {
            return "Evening";
        } else {
            return "Night";
        }
    }
}
