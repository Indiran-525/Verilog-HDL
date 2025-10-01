module alu( 
    input [7:0] A,B, 
    input [2:0] opcode, 
    output reg [7:0] result,
    output reg [15:0] mulresult,
    output reg carry,zero
    ); 


    always@(*) begin

     result = 0;
     carry = 0;
     mulresult = 0;
     zero = 0;

     case(opcode) 
     //arithmetic operations
     3'b000:
        {carry, result} = {1'b0,A} + {1'b0,B}; 
     3'b001: 
        {carry, result} = {1'b0,A} + ~{1'b0,B} + 1; //twos complement addition , carry = borrow
     3'b010: 
     begin
        mulresult = A * B;                          // 16 bit multiplication result
        result = 0;
     end  
     3'b011: 
        result = (B != 0)? (A / B) :8'd255;         // set all bits high if B is zero 

     // logical operations (bitwise)
     3'b100: 
        result = A & B; 
     3'b101: 
        result = A | B; 
     3'b110: 
        result = ~A; 
     3'b111: 
        result = A ^ B; 

     default: begin
        result = 0; carry = 0;
     end
     endcase 
     zero = (opcode == 3'b010) ? (mulresult == 0): (result == 0);
    end 
endmodule