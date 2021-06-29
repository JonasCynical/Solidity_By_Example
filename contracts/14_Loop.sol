// SPDX-License-Identifier: MIT
pragma solidity ^0.7.6;

contract Loop {
    function loop() public pure {
        // for loop
        for (uint i; i < 10; i++) {
            if (i == 3) {
                // Skip to next iteration with continue
                continue;
            }
            if (i == 5) {
                // Exit loop with break
                break;
            }
        }

        // while loop
        uint j;
        while (j < 10) {
            j++;
        }
    }
}
