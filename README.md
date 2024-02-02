# MIPS_single_cycle
MIPS single cycle Verilog implementation based on Computer Organization and Design by David A. Patterson and John L. Hennessy. 
## Overview
https://github.com/Andrei0105/MIPS-single-cycle/commits?author=Andrei0105  had created a single cycle MIPS processor using verilog supporting instructions add, sub, lw, sw, beq and slt. From my part i have added on the support for instructions addi, jump, sll and bne.

The instruction memory file, meminstr.dat contains the codes for the following program:
<img width="416" alt="image" src="https://github.com/noelg23/MIPS_single_cycle/assets/138558829/0f7be0c7-ab76-4c9b-bac4-a65acc0e4904">

The program takes in an array of 10 element and finds the maximun and minimum number in the array.
It then store it in the memory as prescribed by the program.

## Tools
Questasim was used for simulation and Qtspim was used to convert the assembly language to machine code.


