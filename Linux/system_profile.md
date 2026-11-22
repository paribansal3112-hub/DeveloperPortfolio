# System Profile

## Hardware Specifications

| Component | Specification |
|-----------|---------------|
| CPU Model | Intel(R) Core(TM) i7-8650U CPU @ 1.90GHz |
| CPU Cores | 4 cores / 8 threads |
| Total RAM | 7.7Gi |
| Available RAM | 7.2Gi |
| Primary Storage | 722.9M HDD (sda) |
| Operating System | Ubuntu 26.04.1 LTS |
| Kernel Version | 6.18.58.1-microsoft-standard-WSL2 |

**Commands used:** lscpu, free -h, lsblk, uname -a

## Binary Number Representation

### Decimal 75 to Binary (Repeated Division by 2)

| Step | Division | Quotient | Remainder |
|------|----------|----------|-----------|
| 1 | 75 ÷ 2 | 37 | 1 |
| 2 | 37 ÷ 2 | 18 | 1 |
| 3 | 18 ÷ 2 | 9 | 0 |
| 4 | 9 ÷ 2 | 4 | 1 |
| 5 | 4 ÷ 2 | 2 | 0 |
| 6 | 2 ÷ 2 | 1 | 0 |
| 7 | 1 ÷ 2 | 0 | 1 |

Reading the remainders from bottom to top: **(75)₁₀ = (1001011)₂**

Verification: 64 + 8 + 2 + 1 = 75 ✔

### Binary 110101 to Decimal (Positional Weight Method)

| Bit | 1 | 1 | 0 | 1 | 0 | 1 |
|-----|---|---|---|---|---|---|
| Position | 5 | 4 | 3 | 2 | 1 | 0 |
| Weight (2ⁿ) | 32 | 16 | 8 | 4 | 2 | 1 |
| Bit × Weight | 32 | 16 | 0 | 4 | 0 | 1 |

= (1×2⁵) + (1×2⁴) + (0×2³) + (1×2²) + (0×2¹) + (1×2⁰)
= 32 + 16 + 0 + 4 + 0 + 1 = **53**

So **(110101)₂ = (53)₁₀**

### Why Computers Use Binary

Computers use binary internally because their electronic circuits are built from transistors that have only two reliable states, ON and OFF, which map directly to 1 and 0.

## Binary Number Representation

### 1. Decimal 75 to Binary (Repeated Division by 2)

Divide the number by 2 repeatedly and note the remainder each time:

- 75 ÷ 2 = 37 remainder **1**
- 37 ÷ 2 = 18 remainder **1**
- 18 ÷ 2 = 9 remainder **0**
- 9 ÷ 2 = 4 remainder **1**
- 4 ÷ 2 = 2 remainder **0**
- 2 ÷ 2 = 1 remainder **0**
- 1 ÷ 2 = 0 remainder **1**

| Step | Division | Quotient | Remainder |
|------|----------|----------|-----------|
| 1 | 75 ÷ 2 | 37 | 1 |
| 2 | 37 ÷ 2 | 18 | 1 |
| 3 | 18 ÷ 2 | 9 | 0 |
| 4 | 9 ÷ 2 | 4 | 1 |
| 5 | 4 ÷ 2 | 2 | 0 |
| 6 | 2 ÷ 2 | 1 | 0 |
| 7 | 1 ÷ 2 | 0 | 1 |

Reading the remainders from **bottom to top**: 1 0 0 1 0 1 1

**Result: (75)₁₀ = (1001011)₂**

Verification: 64 + 8 + 2 + 1 = 75 ✔

### 2. Binary 110101 to Decimal (Positional Weight Method)

Each bit is multiplied by 2 raised to the power of its position (counting from 0 on the right):

| Bit | 1 | 1 | 0 | 1 | 0 | 1 |
|-----|---|---|---|---|---|---|
| Position | 5 | 4 | 3 | 2 | 1 | 0 |
| Weight (2ⁿ) | 32 | 16 | 8 | 4 | 2 | 1 |
| Bit × Weight | 32 | 16 | 0 | 4 | 0 | 1 |

= (1 × 2⁵) + (1 × 2⁴) + (0 × 2³) + (1 × 2²) + (0 × 2¹) + (1 × 2⁰)

= 32 + 16 + 0 + 4 + 0 + 1

**Result: (110101)₂ = (53)₁₀**

### 3. Why Computers Use Binary

Computers use binary internally because their electronic circuits are made of transistors that have only two stable states, ON and OFF, which map directly to 1 and 0, making binary the simplest and most reliable way to store and process data.

