//mac unit tb 
module macunit_jitb; 
    reg clk,rst; 
    reg [7:0] A,B; 
    wire [15:0] Acc_out; 
    
    macunit dut( 
    .clk(clk), 
    .rst(rst), 
    .A(A),.B(B), 
    .Acc_out(Acc_out) 
    ); 
    
    initial clk=0; 
    always #5 
    clk=~clk; 
    initial begin 
            
        rst=1; 
        A=0; 
        B=0; 
        $display("A=%d B=%d Acc_out=%d",A,B,Acc_out);         
        #10 
        rst=0;     
        A=8'd5; 
        B=8'd3; 

        $display("A=%d B=%d Acc_out=%d",A,B,Acc_out);   
        #10 
        A=8'd4; 
        B=8'd6; 
        $display("A=%d B=%d Acc_out=%d",A,B,Acc_out);   
        #10 
        A=8'd5; 
        B=8'd4; 
        $display("A=%d B=%d Acc_out=%d",A,B,Acc_out);   
        #10   
        $display("A=%d B=%d Acc_out=%d",A,B,Acc_out);   
        $finish; 
    end 
endmodule 
