# Verilog-HDL
Design and Test bench for basic Digital blocks, written in verilog


1. ## Carry look ahead adder
   - 4 bit binary adder with two 4 bit binary inputs, It is a combinational circuit.
   - 4 bit binary sum output and 1 bit carry output.
   - Faster than ripple carry adder due to immediate carry generation.
   - Implementation is done using dataflow modelling.


2. ## 8-bit MAC unit

   - MAC stands for Multiply And aCcumulate, It is a Sequential circuit (has to remember previous value).
   - It consists of a multiplier, adder and accumulator.
   - multiplier multiplies the two inputs and produces a result.
   - The result is added with the exisitng value in the accumulator.
   - The result of adder is again stored in the accumulator.
   - MAC units are used widely in DSP and CNN.
   - Implementation is done using behavioral modelling.
  
3. ## Booth Multiplier

   - Booth's Algorithm is a quick and efficient way of calculating the product of two signed numbers in
     its two's complement form.
   - Multiplication is basically repeated addition and booth algorithm replaces additions of consecutive
     1s into a compressed calculation.
   - If the multiplier is n bit the inputs are of n bits and the output is of 2n bits.
   - Implementation is done using behavioral modelling.
  
```mermaid
flowchart LR
    subgraph PWR["⚡ Power Management (Common to All)"]
        LINE["Line Detection"] --> CTRL["Control & Processing"]
        COLOR["Color Detection"] --> CTRL
        CTRL --> MOTOR["Motor Control"]
        CTRL --> GRIPPER["Gripper Control"]
    end

    %% === Classes ===
    classDef line fill:#FFD580,stroke:#333,stroke-width:2px;
    classDef color fill:#87CEFA,stroke:#333,stroke-width:2px;
    classDef ctrl fill:#90EE90,stroke:#333,stroke-width:2px;
    classDef motor fill:#FF9999,stroke:#333,stroke-width:2px;
    classDef gripper fill:#D8BFD8,stroke:#333,stroke-width:2px;
    classDef power fill:#F0F0F0,stroke:#333,stroke-width:2px;

    %% === Assign classes ===
    class LINE line
    class COLOR color
    class CTRL ctrl
    class MOTOR motor
    class GRIPPER gripper
    class PWR power




