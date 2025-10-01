module alu_tb; 
reg [7:0] A,B; 
reg [2:0] opcode; 
wire [7:0] result; 
wire [15:0] mulresult;
wire carry,zero;
 
alu uut(.A(A),
        .B(B),
        .opcode(opcode),
        .result(result),
        .carry(carry),
        .zero(zero),
        .mulresult(mulresult)); 


integer i; 
initial begin 
A = 44; B = 11; opcode = 0; 
 
for(i=1; i<8; i=i+1) begin 
    #10 
    opcode=i; 
end 
#10 

A = 200; B = 100;
opcode = 0;
#10

$stop(); 
end
endmodule
