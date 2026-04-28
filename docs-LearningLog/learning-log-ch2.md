 Learning log

## Template (copy per entry)

### YYYY-MM-DD — Short title

- **Book:** chapter / section
- **Repo:** `topics/...`
- **Did:** one sentence
- **Next:** optional follow-up

---

## Entries

### 2026-04-28 — 

- **Book:** David Harris & Sarah Harris: Digital Design and Computer Architecture
- **Section:** 2.10 & Excecises
- **Repo:** N/A
- **Learning:** 
  
  Excercises:

  <img src=/docs-LearningLog/ExcerciseSolutions/Excercise2.jpg width="40%"> <img src=/docs-LearningLog/ExcerciseSolutions/InterviewQuestions2.jpg width="40%">
  
- **Next:** 3.1 & 3.2

----------------------------------------------------------------

### 2026-04-27 — 

- **Book:** David Harris & Sarah Harris: Digital Design and Computer Architecture
- **Section:** 2.8 & 2.9
- **Repo:** Check out **/repos/twoFourDecoder.v** and **/repos/oneTwoDemux.v**
- **Learning:** 
  
  Multiplexers are one of the most commonly used combinational circuits. They select one of the many inputs to be their output based on a select line(sometimes called a mux). 
  A 2:1 multiplexer takes two inputs and outputs the value of the line(Input 1 or Input 2) based on if the select value is 0 or 1. Similar extrapolation can be done for higher level mulitplexers.

  To build higher level mulitplexers you can use logic gates or mulitple lower level multiplexers. The issue is determining which select line to place for each multiplexer in the network. This is usually determined through inspection. N:1 mulitpliexers need log base 2 (N) select lines. The position of the select lines is based on what types of demux you use to construct the larger demux. If you want to make a 1:16 demux and you have two levels: 2 1:8 demux in the second level and 1 1:2 demux in the first level, we know that 1:8 required 3 select lines and 1:2 requires 1 select line. Sine 1:16 has 4 select lines the S3 goes to the first level and S2-S0 go to second level. Other constuctions follow a similar theory.

  A decoder takes some inputs and the number of outputs is equalivalent to the number of different values the input bits can represent in binary. The output bit that is HIGH is the value of the input in binary. 00 input corresponds to Y0 as HIGH, 01 input corresponds to Y1 as HIGH.
  - Decoders can be used to build logic. This is because they have a sequence of minterms and form an equation that takes into account all the combination of literals. An example is the formation of logic XOR from 2:4 decoder and OR gate.

  To build logic boolean functions with demux you need the number of selection lines = to the number of variables.

  Timing is one of the most complicated components of circuit building and analysis. It involves understanding that there is a delay between when an input changes value to the output changing value. A timing diagram is used which portrays the transient reponse of the circuit an input changes.
  - The transition from LOW to HIGH is the rising edge
  - The transition from HIGH to LOW is called the falling edge
  Dealy is measured by the time between 50% of the input signal to 50% of the output signal. This means the time when the input signal is half way between its transistion voltage to the outptu signal being half way between its transition voltage.

  The propagation delay, tpd, is the maximum time from when an input changes until the output or outputs reach their final value. For a combinational circuit this is calculated by the sum of the propagation delay for each gate on the critical path.
  The contamination delay, tcd, is the minimum time from when an input changes until any output starts to change its value. For a combination circuit this is calculated by the sum of the contamination delay fro each gate on the short path.
  - These two timing delays may be different due to the temperature, having mulitple inputs and outptu which have different speeds, different rising and falling delays

  The short path is the path of least resistance an time(usually goes through least amount of gates). The cirtical path is the path that goes from input to output passing the most amoutn of gates.

  Glitches and Hazards are when a single input change causes mulitple output changes. Glitches change the output back and forth and returns the correct answer after the time delay elapses. Transition between two prime implicants in teh K'Map can lead to glitches. To prevent it you can add redundant implicants to cover the boundry but this added hardware cost.

  Glitches can also occur if there are mulitpl input transitions at the same time and occur all the time in real world hardware. This is something that cannot be changed by extra hardware. 

  Excercises:

  <img src=/docs-LearningLog/ExcerciseSolutions/Timing_Demux_Decoder.jpg width="40%">

  
- **Next:** 2.10 & Excercises

----------------------------------------------------------------

### 2026-04-26 — 

- **Book:** David Harris & Sarah Harris: Digital Design and Computer Architecture
- **Section:** 2.6 & 2.7
- **Repo:** N/A
- **Learning:** 
  Circuits usually have value of 0 or 1 but there are two other values that are used to represent unknown or illegal values(X and Z respectively).

  Illegal value X: This can happen when a single input to a gate gets two wires converging and have mixed signals. This is called contention and can lead to fighting between the signals resulting in the element getting hot and possibly breaking. 
  - X is also used to signify that a value has not been initialized. This is done by simulator tools
  - In truth tables it means don't care or the value of an input does not change the output

  Floating value Z: This means the node is neither beign driven HIGH or LOW. Z does not mean either 0 or 1 and can be either or any value in between. 
  - It is sometimes the output of the presence of an enable. When the enable is false the circuit does not operate and the output is Z. But when the enable is HIGH the circuit operates and produces whatever output
  

  K'Maps are what are used to simplify boolean expressions. They are much more efficient compared to manipulating equations and are also a visual method. They work best when there are up to 4 variables.

  The K'Map includes all possible combinations of the variables. Inside the squares are the output for that given combination of inputs. Adjacent squares differ by the value of exactly 1 literal.
  - The sequence usually used is: 00, 01, 11, 10
  - The adjacency also wraps around meaning the far right and far left differ by one literal. Additionally the top and bottom squared differ by 1 literal

  You can group values together and write the groups as a sum of products form. Variables are written as their true or complimented form and variables that change values in the group are excluded. Prime implicant in a K'Map is the group with the largest number of squares covered.

  Rules for K'Map:
  1) Use the fewest number of circles(rectangles) to capture all 1s
  2) All squares in the groupings must be all 1s
  3) Each group must span the # of square equal to a power of 2(eg. 1,2,4,8,16)
  4) Each group should be as large as possible
  5) Groups may wrap around the edges or cover only the corners
  6) A 1 may be present in mulitple groups if doing so minimizes number of groups
  7) Don't care values can be used in the groupings as substitute of 1s.
  
  K'Maps and boolean algebra are two techniques that are used to simplify circuits. Although for more complicated problems, logic synthesizers are used which are more efficient than humans. 


  Excercises:
  
  <img src=/docs-LearningLog/ExcerciseSolutions/KMaps.jpg width="40%">
- **Next:** 2.8 & 2.9

----------------------------------------------------------------

### 2026-04-25 — 

- **Book:** David Harris & Sarah Harris: Digital Design and Computer Architecture
- **Section:** 2.4 & 2.5
- **Repo:** N/A
- **Learning:** 
  Schematics are a way to show the gates to represent a boolean expression. There are some rules associated with these drawings to keep them consistent:
  1) Inputs on the left(or top) outputs on the right(or bottom)
  2) Gates should flow left to right when possible
  3) Wires connect at a T juction
  4) Wires that cross with a dot indicates a connection
  5) Wires that cross with no dot indicate no connection

  X is used to denote don't care. It can be used to show that the remaining inputs do not affect the output.

  Logic using Sum Of Products uses two level logic. This means that there are literals which are fed through AND gates and then OR gates to produce the ouputs. There are two levels of gates. With higher level logic we can reduce the number of gates.

  - An example of this is when producing and XOR gate using two level while the simplified version using the XOR gate produces a much cleaner approach. Especially when we are handling more than two inputs.

  In CMOS NAND and NOR are more efficient gates compared to AND and OR. Therefore some application can be more efficient when using multi level logic. This is where bubble pushing comes into play.

  Bubble pushing rules:
  - Begin at the output and work towards input
  - Push bubble on final output back to inputs to read Y instead of Y'
  - Draw gates to that bubbles cancel. If ouputs have bubbles couple with inputs with bubbles in the next gate to cancel

  Excercises:

  <img src=/docs-LearningLog/ExcerciseSolutions/CircuitDrawing.jpg width="40%"><img src=/docs-LearningLog/ExcerciseSolutions/MultiLevelLogic.jpg width="40%">
  
- **Next:** 2.6 & 2.7

----------------------------------------------------------------

### 2026-04-24 — 

- **Book:** David Harris & Sarah Harris: Digital Design and Computer Architecture
- **Section:** 2.3
- **Repo:** N/A
- **Learning:** 
  The axioms of Boolean Algebra by which everything is derived are the following:
  1) B = 0 if B not equal to 1(vice versa)
  2) 0' = 1 and 1' = 0
  3) 0 AND 0 = 0, 1 AND 1 = 1, 0 AND 1 = 0
  4) 0 OR 0 = 0, 1 OR 1 = 1, 1 OR 0 = 1

  Theorums of Boolean Algebra are used to simplify single variable statements:
  1) B AND 1 = B, B OR 0 = B
  2) B AND 0 = 0, B OR 1 = 1
  3) B AND B = B, B OR B = B
  4) B'' = B
  5) B AND B' = 0, B OR B' = 1

  Boolean Theorums for more than 1 variable:
  1) B AND C = C AND B, B OR C = C OR B
  2) B AND (C AND D) = D AND (C AND B), B OR (C OR D) = D OR (C OR B)
  3) (B AND C) OR (B AND D) = B*(C+D), (B+C) * (B+D) = B + (C * D)
  4) B * (B + C) = B, B + (B*C) = B
  5) (B * C) + (B * C') = B, (B + C) * (B + C') = B
  6) (B * C) + (B' * D) + (C * D) = B * C + B' * D, (B+C)* (B'+D)* (C+D) = (B+C)*(B'+D)
  7) (B * C * D)' = B' + C' + D', (B+C+D)' = B' * C' * D'

  A boolean expression is minimized if it has all prime implicants. A prime implicant is when there is a group os literals where they cannot be combined in any way to decrease the amount of literals.

  When identifying minimized boolean expressions it can be difficult to get on the first attempt. A lot of different angles must be identified as well as tried to get the most minimized form. K'Maps are better at finding this minimized form which will be discussed later.

  Excercises:

  <img src=/docs-LearningLog/ExcerciseSolutions/BooleanAlgebra.jpg width="40%">
  
- **Next:** 2.4 & 2.5

----------------------------------------------------------------

### 2026-04-23 — 

- **Book:** David Harris & Sarah Harris: Digital Design and Computer Architecture
- **Section:** 2.1 & 2.2 
- **Repo:** N/A
- **Learning:** 
  A circuit is a black box that includes the following characteristics: one or more discrete valued inputs, one or more discrete valued outputs, a functional specification representing the relationship between inputs and outputs, and a timing specification which iillustrated the time delay from changing inputs to the outputs responding.

  The black box of a circuit is composed of two types of objects: nodes and elements.
  - Elements are themselves circuits with a specific inputs, outputs, and specifications
  - Nodes are wires that are classified as inputs, outputs or internals.
    - Inputs receive values from external environment
    - Outputs deliver value to the external environment
    - Wires that are not inputs or outputs are classified as internals. They represent the connection between elements inside of the black box
  
  Circuits are divided into two categories: combinational and sequential.
  - Combination circuits determine their output based on the current inputs (eg. Logic gates). Combinational circuits are memoryless.
  - Sequential circuits determin their output based on the previous state of the circuit as well as the current inputs. Sequential circuits have memory.
  
  Combinational circuits components:
  - A bus is denoted by a line with a slash. A bus is a bundle of mulitple signals. A number next to the slash represents the number of signals in the bus.

  Rules of combinational circuits:
  - All the interconnected circuit elements are combinational.
  - Every node in the circuits is designated as an input to the circuit or connects to exactly one output terminal of another circuit element.
  - The circuit contains no cyclical pathways

  Boolean equations deal with TRUE and FALSE values. They represent how we can take a set of scenarios(truth table) and map it into proper equations and gates.

  The compliment of a value is the reverse value. If A = 0, then A'(A compliment) = 1. Both the normal and complimented version of a variable are called literals.

  If mulitple variables are mulitplied together(AND gate) then that is called a product or implicant. 

  The minterm is when there is an expression that is the product of all the variables(complimented or uncomplimented).

  The maxterm is when there is an expression that is the sum of all the variables(complimented or uncomplimented)

  Order of operations: (Highest) NOT -> AND -> OR (Lowest)

  A truth table contains 2^N rows where N is the number of inputs. You can generate a boolean expression from a truth table by doing a sum of products(sum of expressions) of all the statements when the output is TRUE.

  The sum of products produces a boolean expression but is not the most simplified version possible. Therefore we are expending more gates and wires than necessary. 

  Product of sum can be used to generate a truth table based on taking the product of all the rows(and taking sum of all variables) which are false.

  You use Sum Of Product(SOP) when there are few true lines and use Product Of Sum(POS) when there are few false lines. But both still may not produce the more simple expression.

  Excercises:
  
  <img src=/docs-LearningLog/ExcerciseSolutions/BooleanExpressions.jpg width="40%">

- **Next:** 2.3 & 2.4

----------------------------------------------------------------
