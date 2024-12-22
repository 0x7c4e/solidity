// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract ForAndWhileLoops {
    function loops(uint256 x) external pure {
        for (uint256 i = x; i < 10; i++) {
            if (i == 3) {
                continue;
            }
            if (i == 5) {
                break;
            }
        }

        uint256 j = 0;
        while (j < 10) {
            j++;
        }
    }

    function sumLoop(uint _n) external  pure returns (uint) {
        uint sum;

        for (uint i = 1; i <= _n; i++) {
            sum += i;
        }

        return sum;
    }
}
