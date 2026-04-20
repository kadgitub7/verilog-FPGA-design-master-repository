# Learning log

Use this file for **dated milestones**: what you read, what you simulated, and what you proved on the board (if applicable).

## Template (copy per entry)

### YYYY-MM-DD — Short title

- **Book:** chapter / section
- **Repo:** `topics/...`
- **Did:** one sentence
- **Next:** optional follow-up

---

## Entries

### YYYY-MM-DD — 

- **Book:** David Harris & Sarah Harris: Digital Design and Computer Architecture
- **Section:** 
- **Repo:** N/A
- **Learning:** 
  
  
- **Next:** 

----------------------------------------------------------------

### 2026-04-20 — 

- **Book:** David Harris & Sarah Harris: Digital Design and Computer Architecture
- **Section:** 1.5 & 1.6
- **Repo:** N/A
- **Learning:** 
  Logic gates are a concept where operations can be done on binary inputs to produce binary outputs. This is a slight abstraction as the gates themselves are circuits which have been simplified.

  A truth table is a way to represent the different combinations of inputs and their corresponding output. Each row represents a possible combinations.

  The boolean expression is a mathematical representation of the truth table and can be used to generate the ouput of the gate when provided with inputs.

  - The NOT gate is represented by the following symbol(->o-). It is an inverter and takes one input. The output is the reverse(eg. TRUE to FALSE or FALSE to TRUE). It can also be written as Y = A(bar).
  - the BUFFER gate is represented by (->-). It does not change the input and simply relays it as output. It almost acts as a wire but can be used to send large amounts of current or quickly send output to many gates. Y = A
  - AND gate takes two inputs and returns one output. It only returns TRUE if both inputs are true and returns FALSE otherwise. It can be written as Y = AB
  - OR gate takes two inputs and return on output. It returns TRUE if either/both inputs are true and returns FALSE only if both inputs are false. It can be written as Y = A + B
  - XOR gate is when the inputs are either but not both True returns TRUE. Otherwise it returns FALSE.
  - NAND gate is an abbreviations of Not AND. Therefore inverts all the combinations of AND(Only TRUE when inputs are either both false or at least one false).
  - NOR is not OR and similarly the inversion of OR.
  - XNOR gate is TRUE when both inputs are equal

  You can also have gates that have mulitple inputs(more than 2). The same logic applies that the gates impose but are extrpolated to accomodate more inputs.

  Example Homework:
  <img src=/docs/ExcerciseSolutions/LogicGates1.jpg width="30.5%"> <img src=/docs/ExcerciseSolutions/LogicGates2.jpg width="40%">
  
- **Next:** 

--------------------------------------------------------------

### 2026-04-19 — Operations

- **Book:** David Harris & Sarah Harris: Digital Design and Computer Architecture
- **Section:** 1.4.5, 1.4.6
- **Repo:** N/A
- **Learning:** 
  Addition in Binary is very similar to addition in Decimal. You simply add the values in the corresponding column and the resulting value is compared to see if it can fit in a single digit. If it cannot the remaining component is then added to the next column. This carry value is called the carry bit.
  Digital System are based on operations with a fixed number of digits. Therefore operations like addition which can in some particular example produce results that require more bits to represent the result is called overflow.
  Since binary numbers looked at previously were strictly positive values to represent negative values there are two main ways: signed/magnitude numbers and two's compliment.
  - Signed/magnitude numbers have the most significant bit as the sign(+(0) or -(1)) with the remaining bits representing the value of the number. The disadvantages for this system is that adding the values with their sign present does not result in accurate addition. Additionally there are two representations for the number zero which does not make sense.
  - Two's compliment is very similar to signed numbers. It uses the same logic where the most significant bit is the sign of the number and the magnitude is the remaining bits, but to change the sign of the number you invert all bits values and add 1 to the least significant bit. The shortcomings of signed number is averted using this method.

To perform subtraction simply take the two's compliment of the second number and add.
When performing operations with two's compliment values you can sometimes run into issues with overflow. Since you are using one bit as a sign, the amount of numbers you can represent is less and therefore a number typically represented with N bits will now require more bits. This can sometimes lead for comfusion especially if added two positive values or two negative values.

Sign extension can be performed where the signed bit(most significant bit)'s value is taken and distributed to the extra bits added. Therefor -3 in 4-bits = 1101 and in 7-bits = 1111101

Excercise Homework Completed:

<img src=/docs/ExcerciseSolutions/Operations.jpg width="45.5%"> <img src=/docs/ExcerciseSolutions/SignedValues.jpg width="40%">


- **Next:** Logic Gates

------------------------------------------------------------------------------------------------------------------------------
### 2026-04-18 — Number Systems

- **Book:** David Harris & Sarah Harris: Digital Design and Computer Architecture
- **Section:** 1.4.1, 1.4.2, 1.4.4
- **Repo:** N/A
- **Learning:** 
  Number systems are based on a (base) value. We usually use base 10 and therefore each column of the number is 10 times the value. In digital logic there is a base 2 numbering system.
  Binary system has each each digit a value of 0 or 1. This means each column has twice the weightage of the previous column. To convert binary to decimal you can make a table of values where the value of the digit is multiplied by the value of that place(eg. 2^4 for the 5th column). Find the power of 2 that is the highest but less than the value you aim to represent. Then add one and coninue until the value is perfectly represented
  Hexadecimal can be used to simplify a long string of binary values. Each hexademical value represents up to 4 binary values. It follows a similar format to binary and decimal calculatations and translations. Digits range from (0-F) including A-F for 11-15.
  A byte is a group of 8 bits. Each bit is a binary values. Therefore a byte contains 2^8 = 256 possible values. When looking at a group of bits the bit on the very far right column is the Least Significant Bit(lsb) and the bit on the most left column is the Most Significant Bit(msb)
  
- **Next:** Operations with binary
