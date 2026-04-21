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

### 2026-04-21 — 

- **Book:** David Harris & Sarah Harris: Digital Design and Computer Architecture
- **Section:** 1.7 & 1.8
- **Repo:** N/A
- **Learning:** 
  Transistors are what are used in modern day computers and chips. They are on and off switches that can be operater through changing the voltage or current is applied at the terminals. There are two main types: bipolar transistors and metal oxide semiconductor field effect transistors(MOSFET).

  - Semiconductors are what are used to make these chips. Silicon is mainly used and to increase its effectiveness(since there are no free electrons in a pure substance), we can introduce dopants. These allow for either free electrons(n-type with dopants of group 5 or higher elements) or holes(p-type with dopants of group 3 or lower elements). The free electron can be used to conduct electricity and the movement of the hole is similar. By changing the concentration of the dopant you can achieve different conduction.

  - Diodes are when you have a p-type silicon and n-type silicon touching. In this region the anode is the p-type silicon and the cathode is the n-type silicon. If the voltage is higher in the anode there is a forward bias and movement of charge, but if the voltage is higher in the cathode then there is no current flow.

  - Capacitors can be used to store and release energy. A capacitor is two conducting plates that store energy
  when a potential is applied. The equations C = Q/V represents the charge accumulation.

  - MOSFET are assembled by taking layers of silicon called wavfers and layering them with specfic patterns and dopants. They are produced at once to limit cost. The MOSFET sandwich consists of a conducting layer(gate) on top of an insulating layer(substrate). The sandwich forms a capacitor and an insulating layer called a dielectric speperates the plates.
  n-MOS transistors use substrate of p-type silicon and regions called source and drain which are n-type. The p-MOS transistors is the opposite. n-MOS and p-MOS transistors are at 0 and 1 are different states and when changing the voltage show different effects. They will pass one of the signals well but the other not so well.
  CMOS is used because they allow us to have two types on one chip and we get the best signal from both types.

  Power consumption is the amount of energy used per unit time. Digital system drow both static(power required when a system is idle) and dynamic(power required to change charge capacitors) power. Dynamic power consumption is given by P = 1/2 * C * V^2 * f where f is the frequency that it changes. Static power is given by P = I*V. 

- **Next:** 1.9 * Practice Questions

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
  
  <img src=/docs-LearningLog/ExcerciseSolutions/LogicGates1.jpg width="40%"> <img src=/docs-LearningLog/ExcerciseSolutions/LogicGates2.jpg width="41%">
  
  Digital systems need to be able to translate into circuitry. In circuits, the values are not discrete and are instead continuous. Therefore the gates and variables used must be able to handle not only 0 and 1, but some noise to distinguish
 what to make of the values.

  Here is a breakdown of some key concepts:
  - Supply voltage: The amount off voltage to represent 0 is usually 0V and is called the ground(GND). Previously the supply voltage(voltage to represent high) was around 5V and has progressively decreased as transistors got smaller so that it does not harm them.
  - Logic levels are how we can map a continuous value into a discrete value. There are thresholds for this and between transactions between gates the noise makes the level come closer together to accomodate. In the middle there is unpreddictable behavious because the gate does not know if it is a high or low signal
  - Noise margin is the amount that we calibrate the logic level by between output of one gate into the input of another gate. They are definedd by: NM(L) = V(IL)-V(OL) and NM(H) = V(OH) - V(IH)

  - DC transfer characteristics is when the output voltage is a function of the input voltage when it is changed shlowly enough. An ideal inverter would have a threshold at the midpoint meaning anything above midpoint is HIGH and anything below is LOW. But real inverters change more gradually and therefore the point that you define as the thresholds will differ. A good approximation is when they have a slope of -1 on the DC transfer curve.

  In digital logic you can choose to use groups of gates that follow similar thresholds and are therefore able to comform to static discipline. By choosing teh gates used specifically you are able to make it so that there are no errors in you design. There are 4 major logic families that exibit this behaviour: Transistor-Transistor Logic(TTL), Complimentery Metal-Oxide Semiconductor Logic(CMOS), Low Voltage TTL logic(LVTTL) and Low Voltage CMOS(LVCMOS).

  <img src=/docs-LearningLog/ExcerciseSolutions/NoiseMargins.jpg width="41%">
- **Next:** CMOS Transistors(1.7) and Power Consumptions(1.8)

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

<img src=/docs-LearningLog/ExcerciseSolutions/Operations.jpg width="45.5%"> <img src=/docs-LearningLog/ExcerciseSolutions/SignedValues.jpg width="40%">


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
