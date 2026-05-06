
#  Solidity Group Project - Learn Solidity Course

>  Laboratory Assignment Submission  
>  Completed: May 2026 | Deadline: May 06, 2026  
>  Course: [Alchemy University - Learn Solidity](https://www.alchemy.com/university/courses/solidity)

---

## 👥 Team Members

| Member | GitHub Profile |
|--------|---------------|
| Hussein Beshir | [@HussooB](https://github.com/HussooB) |
| Abdulbasit Nezif | [@Ibnunezif](https://github.com/Ibnunezif) |
| Abdurahman Mohammed | [@3abud-web](https://github.com/3abud-web) |
| Abdulhafiz Mohammed | [@AbdulhafizMohammed20](https://github.com/AbdulhafizMohammed20) |
| Salahadin Kadi|  https://github.com/SalahHubb |

>  Each member has made visible public contributions to this repository as required by the assignment.

---

##  Course Completed

✅ **[Alchemy University - Learn Solidity](https://www.alchemy.com/university/courses/solidity)**

| Detail | Info |
|--------|------|
| Skill Level | Intermediate |
| Time to Complete | ~2 weeks (accelerated) |
| Framework Used | Foundry (Forge) |
| Language | Solidity ^0.8.20 |
| Completion Proof | See `/screenshots/` folder |

### Skills Demonstrated
- ✅ Coding in Solidity
- ✅ Smart Contract Fundamentals  
- ✅ Value Types, Functions, Address Interactions
- ✅ Reference Types: Arrays, Structs, Mappings
- ✅ Applied Patterns: Voting, Inheritance, Escrow
- ✅ Testing with Foundry/Forge

---

## 📁 Repository Structure

```
Solidity-Group-Project/
├── 📄 README.md                 # Project documentation
├── 📄 foundry.toml              # Foundry configuration
├── 📄 .gitignore                # Git ignore rules
├── 📄 LICENSE.txt               # MIT License
├── 📄 .gitmodules               # Git submodule config
│
├── 📂 src/                      # All Solidity solutions
│   ├── 📂 chapter1/             # Basic types + functions
│   ├── 📂 chapter2/             # Address interactions + escrow
│   ├── 📂 chapter3/             # Arrays, structs, mappings
│   └── 📂 chapter4/             # Voting + inheritance
│
├── 📂 lib/                      # Foundry dependencies
│   └── 📂 forge-std/            # Foundry standard library (submodule)
│
├── 📂 screenshots/              # Course completion proof
│   └── 📄 course-completion.png
│
└── 📂 resources/                # Study materials
    └── 📄 course-notes.md       # Consolidated course notes
```

---

##  Prerequisites

### Install Foundry
```bash
# Official guide:
# https://book.getfoundry.sh/getting-started/installation
```

### Clone This Repository
```bash
git clone https://github.com/HussooB/Solidity-Group-Project.git
cd Solidity-Group-Project
```

### Install Dependencies
```bash
# Install forge-std library
forge install foundry-rs/forge-std --no-commit

# OR initialize submodules
git submodule update --init --recursive
```

---

##  Course Contents

### 🔹 Chapter 1: Basic Data Types & Functions

| Type | Description | Default |
|------|-------------|---------|
| `bool` | true/false | `false` |
| `uint` | unsigned integers | `0` |
| `int` | signed integers | `0` |
| `address` | Ethereum address | `0x000...000` |
| `bytes32` | fixed-size byte array | `0x000...000` |
| `string` | UTF-8 text | `""` |

### 🔹 Chapter 2: Address Interactions

| Method | Returns | Reverts |
|--------|---------|---------|
| `transfer` | `void` |  Yes |
| `send` | `bool` |  No |
| `call` | `(bool, bytes)` |  No |

```solidity
// Reverting example
require(msg.sender == owner, "Only owner");
revert("Custom error");
```

### 🔹 Chapter 3: Reference Types

```solidity
// Arrays
uint[] public dynamicArray;
dynamicArray.push(42);

// Structs
struct Person {
    string name;
    uint256 age;
}

// Mappings
mapping(address => uint256) public balances;
```

### 🔹 Chapter 4: Applied Solidity

```solidity
// Voting
mapping(address => bool) public hasVoted;
function vote(uint256 id) external {
    require(!hasVoted[msg.sender], "Already voted");
    hasVoted[msg.sender] = true;
}

// Inheritance
contract Base {
    function greet() public virtual returns (string memory) {
        return "Hello";
    }
}
contract Derived is Base {
    function greet() public override returns (string memory) {
        return "Hi";
    }
}
```

---

##  Usage

```bash
# Compile all contracts
forge compile

# Run all tests
forge test

# Run tests for specific chapter
forge test --match-path "src/chapter1/*" -vvv

# Gas report
forge test --gas-report

# Verbose output (debug mode)
forge test -vvv
```

---

##  Course Completion Proof

All screenshots demonstrating course progress are stored in the `/screenshots/` directory:

| File | Description |
|------|-------------|
| `course-completion.png` | Shows 100% completion on Alchemy University dashboard |

Additional study materials and consolidated notes are available in `/resources/course-notes.md`.

---

##  Contributing

This is a collaborative academic project. If you're a team member making updates:

```bash
# Pull latest changes
git pull origin main

# Make your changes (add notes, fix typos, update docs)

# Commit with clear message
git add .
git commit -m "docs: update - [Your Name]"

# Push
git push origin main
```

>  Verify all team contributions: `git shortlog -sn --all`

---

##  Academic Integrity Notice

> This repository was created as part of a university laboratory assignment for educational purposes only.
> 
> -  All code solutions were developed by the team while completing the Alchemy University Learn Solidity course.
> -  Reference materials and public repositories were used as **study guides only** to understand concepts and verify approaches.
> -  Each team member contributed original commits demonstrating individual engagement with the material.
> -  This project is not intended for production use or commercial deployment.

---

##  License

MIT License - For educational and learning purposes only.  
See `LICENSE.txt` for details.

---

<div align="center">

###  Made with ❤️ by the Solidity Group

*ASTU Students | May 2026*

[🔗 Course Link](https://www.alchemy.com/university/courses/solidity) • [📚 Foundry Docs](https://book.getfoundry.sh/)

</div>
