// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IHero {
    function alert() external;
}

contract Sidekick {
    function sendAlert(address hero) external {
        // ✅ Manually craft calldata:
        // 1. Function signature: "alert()"
        // 2. Keccak256 hash: keccak256("alert()")
        // 3. Take first 4 bytes: bytes4(...)
        
        bytes4 selector = bytes4(keccak256("alert()"));
        
        // 4. Call the hero contract with raw calldata
        (bool success, ) = hero.call(abi.encodeWithSelector(selector));
        require(success, "Call failed");
    }
}