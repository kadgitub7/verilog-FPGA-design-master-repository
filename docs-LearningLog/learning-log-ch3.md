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

### 2026-04-29 — 

- **Book:** David Harris & Sarah Harris: Digital Design and Computer Architecture
- **Section:** 3.1 & 3.2
- **Repo:** N/A
- **Learning:** 
  Sequential circuits differ from combinational circuits in that they produce output based on both the current inputs and the past state of the circuit(past output). This means that the circuit has some memory element that allows it to store input and use it as a value in the next cycle.

  Sequential circuits might remeber the past inputs or they might distill it into a state. The state consists of having only the state variables which are the bits that are essential for determining the future output.

  The fundemental building block of memory is the bistable element. A simple example if two inverters placed next to each other where the value in the circuit has two stable values depending on where you are in the circuit. If you cross couple this same circuit you get a circuit where there are no inputs but the output of one inverter is the input of another so there are two outputs that are compliments of each other.

  An element with N stable states has log base 2 (N) stored bits. Therefore bistable elements have 1 bit stored. In the example provided the 1 bit of value is the value of Q, when we get this we understand the previous state of the circuit.

<img src=/docs-LearningLog/schematics/SR_latch.png width="20%">

  1) SR latch
    - This sequential circuit is represented by a cross coupled NOR gates. It has two inputs S and R which are used to set and reset the output Q
    - The following are cases showing what happens when the inputs variables are different values:
        - Case 1: R = 1 S = 0: In this sequence the **Q = 0** because R being 1 automatically triggers output = 0(NOR gate). This output then gets sent to the input of N2. Since both inputs are 0, the output is 1, **Q' = 1**.
        - Case 2: R = 0 S = 1: In this sequence **Q' = 0** because S being 1 automatically triggers output = 0(NOR gate). This output then gets sent to the input of N1. Since both inputs are 0, the output is 1, **Q = 1**.
        - Case 3: R = 1 S = 1: In this sequence **Q = 0** becuase R being 1 automatically triggers output = 0(NOT gate). This output gets sent to the input of N2. Becuase one input from N1 is 0 and other input from S = 1, the ouput is 0, **Q'=0**. Therefore both outputs are 0.
        - Case 4: R = 0 S = 0: In this sequence there is no predictable behaviour as none of the variables are 1, we cannot predict the absolute value of one of the outputs. We now have to consider cases:
            - Case 4a:  Q = 0 -- Because S and Q are FALSE, N2 produces a TRUE output on Q'. Now N1 receives one TRUE input, Q' , so its output, Q, is FALSE, just as we had assumed.
            - Case 4b: Q = 1 -- Because Q is 1, N2 produces a FALSE output on Q'. Now N1 receives both false outputs, so its output Q is True.

            Therefore the previous state is presenved when both inputs are FALSE. This is the condition where memory is stored.
    <img src=/docs-LearningLog/schematics/SR_latch_table.png width="20%">

     S stands for set and R stands for reset. When S is asserted the value of the bit is set to 1, when R is asserted the value of the bit is reset to 0. When neither is asserted the memory of the previous state is kept. If both are asserted then the value goes to 0. This last part does not make any sense since we are trying to both set and reset the value resulting in both outputs being 0, which also doesn't make sense since they are supposed to be compliments of each other.

  2) D Latch
    - Compared to the SR latch, which has a multitude of problems: It has trouble when both S and R are asserted, it cannot uniquely control what the value is and when the value will change as both happen at the same time.
    - The D Latch is able to use a input D(data input) to control what the next state should be, and a Clock(clk) to control when the change should happen.    
    - The D latch keeps memory when the Clk is LOW and when the Clk if HIGH it sets whatever value its D(data input) is to Q(the state variable). It acts transparent when Clk is HIGH and opaque when Clk is LOW.
    - The F latch updates it state continuously when Clk is HIGH.

<img src=/docs-LearningLog/schematics/D_latch.png width="40%">

  3) D Flip Flop
    - D flip flop is shown in the diagram below. It is built using two D latches. One is the master and the other is the slave. They are connected and shar a Clk but the master has the complimented version. When the Clk is 0, the master is transparent(Open) and the value of the data input(D) is propagatted through N1 but not through the slave. When the Clk switched from 0 to 1, the master is deactivated and the slave is activated. The value at N1 which does not change since the master is deactivated gets sent through the slave out to Q. Therefore we are able to control when exactly the state changes based on when the rising edge of the clock happens(Change from 0 to 1). Therefore the issue of continuous changes of the state do not occur. At all other times it simply remebers its state(memory).
    <img src=/docs-LearningLog/schematics/D_FlipFlop.png width="20%">

  4) Register
    - An N-bit register is a bank of N flip flops all connected by the same clock. This way all bits of the register are updated at the same time.

  5) Enable flip flops
    - An enable flip flop works very similarly to a regular flip flop. It has an extra enable input which when HIGH operated the same as a regular flip flop, updating the state on every clock edge. When the enable input is LOW it does not matter if the clock edge happens the state will remain the same. This can be used when we only want to change the state sometimes and not on every clock edge.
    <img src=/docs-LearningLog/schematics/Enable_FlipFlop.png width="20%">

  6) Resettable flip flops are when the input D is fed through an AND gate with the other input being a RESET value. When using this and the RESET value can be triggered to make the value stored in the flip flop 0 at any point. Syncronous reset happens at the clock edge and asyncronous reset changes the internal structure of the flip flop to make it so that it resets whenever the RESET is turned on.

  Excercises:

  <img src=/docs-LearningLog/ExcerciseSolutions/FlipFlops.jpg width="40%">
  
- **Next:** 3.3 & 3.4

----------------------------------------------------------------
