// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./Hero.sol";  // ← Make sure this path is correct!

interface IHero {
    function alert() external;
}

contract Sidekick {
    function sendAlert(address hero) external {
        // ✅ Use the interface to call alert() on the hero contract
        IHero(hero).alert();
    }
}