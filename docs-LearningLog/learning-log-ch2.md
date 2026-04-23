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