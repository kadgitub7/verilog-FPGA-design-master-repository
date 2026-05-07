 Learning log

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

### 2026-05-07 — 

- **Book:** David Harris & Sarah Harris: Digital Design and Computer Architecture
- **Section:** 4.3 & 4.4
- **Repo:** N/A
- **Learning:** 
  Structural modelling is using smaller designs to develop larger designs. A 4:1 mux can be creased using multiple 2:1 mux as shown in Example 4.15:

  **/repos/example4dot15.v**
  
  If a signle module is used multiple times then it is called an instance. Multiple instances need multiple names to make sure we know which one does what. 

  Complex systems are designed heirarchically. The involes brakign down larger problems into smaller problems which are boken down recursively until they are able to be behavorially explained. 

  Here an example of a 8 bit 2:1 mux is built using 2 4 bit 2:1 mux:

  **/repos/example4dot17.v**

  Sequential cricuits need a memory element and are changed values periodically.
  **always** statements in Verilog make sure that the value only change and are recomputed when there is a change in the sensitivity list. This is a list of values where anything placed inside will be continuously checked for updates and the following inside code will run when that happens. Usually only the clk will be in the sensitivity list so that it detects when something is changing and to recompute the values.

  **assign** statements are different. They are evaluated every time any of the inputs change. They do not wait for some clock change to happen.

  This is a representation of a register in verilog. We use the always term to change values whenever the clock changes value. The format q <= d means q gets d, which is q gets the value of d at that time. This is also a non-blocking assignment which is different from assign. All variables on the left hand side of <= must be reg variable type. 

  Some times you want a reset value so that once the power is turned on there is no unknown value and you can reset the value to get an operational register.

  An enable register only works when teh enable is true, this can be used to dictate when you want the values to change if not at a periodic time.

  **/repos/example4dot18.v**

- **Next:** 4.5 & 4.6

----------------------------------------------------------------

### 2026-05-05 — 

- **Book:** David Harris & Sarah Harris: Digital Design and Computer Architecture
- **Section:** 4.1 & 4.2 
- **Repo:** /repos/example4dot1.v, /repos/example4dot2.v, /repos/example4dot5.v
- **Learning:** 
  HDL is a way to describe language in code and therefore the CAD software is able to configure the logic gates in the most optimal combination. This is what is used in industry to build commertial products. I will focus on Verilog implementation in my repositories and learning.

  Modules are blocks of hardware. They have inputs and outputs and perform some function. Example 4.1 is shown which represents how logic can be broken down into modules that perform a specific task.

  **/repos/example4dot1.v**

  HDLs are effective because they facilitate logic synthesis and simulation. Simulation is when you apply inputs to the module and the outputs are verified for correctness. Therefore we are able to tell whether the module works as intended. The inputs and verified outputs are usually from a truth table. Synthesis is when the coding language(words/symbols) are transcribed into hardware logic

  It is important to verfiy the correctness of the module before sending to users. The waveform shows the value(0 or 1) of all inputs and teh corresponding output. Using the waveform we can identify if there are any unintended outputs for the respective inputs.

  <img src=/docs-LearningLog/schematics/waveformExample.png width="20%">

  Logic synthesis transforms the HDl code into a netlist which can wither be text file or a visual description of the hardware. This is then used to build the module into logic gates. Testbenches are non-synthesizable code. They involve probing the module with inputs and verifying outputs. You can also print values to the screen in a testbench. The code in the module is synthesizable to hardware but not the testbench which is used for verification.

  HDL is not a typical programming language and simply described how the hardware should operate. If you think of it in that manner then you will be able to correctly produce the hardware you intend to produce. Also HDL is more of a parallel language where operations happen in parallel compared to sequential logic in more programming languages.

  Combination logic is only dependant on the inputs and not previous state of the module.

  Here in example 4.2 a simple bit wise inverter is shown.

  **/repos/example4dot2.v**

  Reduction operators can be used to simplify the verbose statements when acting on a single bus of inputs. It allows us to perform a single operation involving all the values in a bus. Example 4.4 explains this:

  **/repos/example4dot4.v**

  Similarly there are operators that can be used to select. the ? operator is used to select an expression based on the value of a selector variable.

  **/repos/example4dot5.v**

  The use of internal variables can help you simplify logic especially if a single operation is done multiple times.
  An example is if the logic for a system is:

  S = A^B^C
  Cout = AB + ACin + BCin

  Then you can define internal variables(similar to local variables):
  P = A^B
  G = AB

  So that:
  S = P ^ C
  Cout = G + PCin

  Just like in regual mathematics there is an order of precedence in computing expressions. The order is as such:
  ~(NOT)
  *(MUL) /(DIV) %(MOD)
  +(PLUS) -(MINUS)
  <<(Logical Left shift) >>(Logical Right Shift)
  <<<(Arithmetic Left Shift) >>>(Arithmetics Right Shift)
  < = <= >= > (Relative Comparison)
  == != (Equality Comparison)
  &(AND) ~&(NAND)
  ^ (XOR) ~^(XNOR)
  | (OR) ~|(NOR)
  ?(Comparison)

  Numbers in verilog are specified by the following format: N'Bvalue where N is the number of bits used to store the value, B is the base(b for Binary, o for Octal, d for Decimal, and h for Hexadecimal). the value is the actual value in that base. If no base is given it defaults to decimal. If the number of bits is not specified then it will get the number of bits exactly needed to represent the number. If the number of bits is more than required then 0's will be padded to the front. 

  Z is given when there is a floating voltage or a value that is not quite 0 or 1. This is used when there is an enable wire passed and set to 0. X means that it is invalid logic where perhaps both 0 and 1 are being fed into the same input. 

  You can concatenate busses using {} if a coefficient is in front then it multiplies the occurance of that bus.

  You can add delays in your design to make it more similar to how it would behave in real hardware. This line at the top indicates the scale of the time: ‘timescale 1ns/1ps
  Then adding lines which contain #(value) represent the unit of time that the delay will be 
  
- **Next:** 4.3 & 4.4

----------------------------------------------------------------