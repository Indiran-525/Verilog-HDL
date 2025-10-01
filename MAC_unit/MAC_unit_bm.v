module macunit( 
input clk, 
input rst, 
input [7:0] A, B, 
output [15:0] Acc_out 
); 

    reg [15:0] accumulator; 
 
    always @(posedge clk or posedge rst) begin 
        if (rst) 
            accumulator <= 16'd0; 
        else 
            accumulator <= accumulator + (A * B); 
    end 
 
   assign Acc_out = accumulator; 
 
endmodule 

