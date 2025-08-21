# Verilog-HDL
Design and Test bench for basic Digital blocks, written in verilog


1. **Carry look ahead adder**
   - 4 bit binary adder with two 4 bit binary inputs, It is a combinational circuit.
   - 4 bit binary sum output and 1 bit carry output.
   - Faster than ripple carry adder due to immediate carry generation.
   - Implementation is done using dataflow modelling.

2. **8-bit MAC unit**
   -MAC stands for Multiply And aCcumulate, It is a Sequential circuit (has to remember previous value).
   -It consists of a multiplier, adder and accumulator.
   -multiplier multiplies the two inputs and produces a result.
   -The result is added with the exisitng value in the accumulator.
   -The result of adder is again stored in the accumulator.
   -MAC units are used widely in DSP and CNN.
   -Implementation is done using behavioral modelling.
