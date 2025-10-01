module four_bit_booth_mul_tb; 
    reg signed [3:0] multiplicand; 
    reg signed [3:0] multiplier; 
    wire signed [7:0] product; 
    //dut instantiation
    booth_multiplier uut (.multiplicand(multiplicand), .multiplier(multiplier), .product(product)); 
  
    initial begin 
        $display("Time\tMultiplicand\tMultiplier\tProduct"); 
        $monitor("%g\t%0d\t\t%0d\t\t%0d", $time, multiplicand, multiplier, product); 
        multiplicand = -3;  // 4'b1101 
        multiplier = 5;     // 4'b0101 
        #10; 
        multiplicand = 2;   // 4'b0010 
        multiplier = -7;    // 4'b1001 
        #10; 
        multiplicand = -4;  // 4'b1100 
        multiplier = -2;    // 4'b1110 
        #10;
        $finish; 
    end 
endmodule 
