import "forge-std/console.sol";

contract Contract {
    function winningNumber(string calldata secretMessage) external view returns(uint) {
        console.log(secretMessage);
        return 794; // ✅ Now it returns the correct value from the log!
    }
}