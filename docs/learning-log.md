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

*(Add your first entry when you complete a topic.)*

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
