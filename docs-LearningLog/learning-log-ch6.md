## Template (copy per entry)

### YYYY-MM-DD — Short title

- **Book:** chapter / section
- **Repo:** `topics/...`
- **Did:** one sentence
- **Next:** optional follow-up

---

## Entries

### 2026-06-08 — 

- **Book:** David Harris & Sarah Harris: Digital Design and Computer Architecture
- **Section:** 
- **Repo:** N/A
- **Learning:** 
  
  
- **Next:** 

----------------------------------------------------------------

### 2026-06-10 — 

- **Book:** David Harris & Sarah Harris: Digital Design and Computer Architecture
- **Section:** 6.1 & 6.2
- **Repo:** N/A
- **Learning:** 
  Computer microprocessers all run every bit of what the computer does. It can all be broken down into a set of instructions to follow. These instructions are simply liek add subtract, multiply and the such but are the foundation of what a computer does. Computer Architecture is very low level and allows us to use high level code like java and C to perform complex conmmands.

  Assembly language is the low level coding. High level code often is human readable, assembly code is more optimized for computer simplicity. Here are examples of C and MIPS Assembly Language:
  Code Example 6.1 ADDITION
  High Level Code:                      MIPS Assembly Code:
  a = b + c;                            add a,b,c

  Code Example 6.2 SUBSTRACTION
  High Level Code:                      MIPS Assembly Code:
  a = b - c;                            sub a,b,c
  
  Assembly code can be broken down to understand the different components. The first it the command, theis is for example add, or sub, this is refered to as the mnemonic. The source operands are what are used to do the action, and the destination operand is where the value goes. 

  The instructions are standardized and therefore east to understand and reproduce. There are two types of systems RISC(Reduced Instruction Set Computers) and CISC(Complex Instruction Set Computers). The complex one is better tuned to complex tasks requiring multiple different operations but is not efficient for small tasks. the reduced task is not good at complex tasks but is very efficient at small tasks.

  The $s is used to signify variables stored in memory, this is usually done for variables that are used very requently, $t is for temporary memory.

  We can also use other commands such as sw and lw to get or store information into memory which is harder to access but larger that the register.
- **Next:** 

----------------------------------------------------------------