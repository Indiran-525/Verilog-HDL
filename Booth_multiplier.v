module booth_multiplier ( 
    input  signed [3:0] multiplicand, 
    input  signed [3:0] multiplier, 
    output reg signed [7:0] product 
); 
    reg signed [3:0] A, Q, M; 
    reg Q_1; 
    integer count; 
 
    always @(*) begin 
        A = 4'sd0; 
        M = multiplicand; 
        Q = multiplier; 
        Q_1 = 1'b0; 
        count = 4; 
        while (count > 0) begin 
            case ({Q[0], Q_1}) 
                2'b01: A = A + M; 
                2'b10: A = A - M; 
            endcase
            // Arithmetic shift
            Q_1=Q[0];         // Q_1 takes the value of LSB of Q
            Q={A[0], Q[3:1]}; // Shift Q right, LSB of A becomes MSB of Q
            A={A[3], A[3:1]}; // Arithmetic right shift of A (sign bit stays)
            count = count - 1; 
        end 
        product = {A, Q}; // final result 
    end 
endmodule 
