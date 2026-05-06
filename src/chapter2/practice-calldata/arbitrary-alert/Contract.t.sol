// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// Import Foundry testing utilities
import "forge-std/Test.sol";

// Import the contracts under test
import "./Sidekick.sol";
import "./Hero.sol";

// Main test contract inheriting from Foundry's Test
contract ContractTest is Test {
    // Declare instances of contracts to be tested
    Sidekick public sidekick;
    Hero public hero;

    // setUp runs before each test case
    function setUp() public {
        // Deploy fresh instances for isolation between tests
        hero = new Hero();
        sidekick = new Sidekick();
    }

    // Test case 1: alert with 5 enemies and armed = true
    function testAlert1() public {
        // Sidekick relays encoded function call to Hero contract
        sidekick.relay(
            address(hero),
            abi.encodeWithSignature("alert(uint256,bool)", 5, true)
        );

        // Retrieve the state from Hero after alert
        (bool alerted, uint enemies, bool armed) = hero.ambush();

        // Assertions to verify expected behavior
        assertEq(alerted, true, "it should have alerted the hero");
        assertEq(enemies, 5, "it should have let the hero know theres 5 enemies");
        assertEq(armed, true, "it should have let the hero know the enemies are armed");
    }

    // Test case 2: alert with 2 enemies and armed = false
    function testAlert2() public {
        // Relay different parameters to simulate another scenario
        sidekick.relay(
            address(hero),
            abi.encodeWithSignature("alert(uint256,bool)", 2, false)
        );

        // Retrieve updated state
        (bool alerted, uint enemies, bool armed) = hero.ambush();

        // Assertions to confirm correct handling
        assertEq(alerted, true, "it should have alerted the hero");
        assertEq(enemies, 2, "it should have let the hero know theres 2 enemies");
        assertEq(armed, false, "it should have let the hero know the enemies are not armed");
    }
}
