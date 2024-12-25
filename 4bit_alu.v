module alu_4bit(
    input [3:0] A, B,
    input [2:0] con,
    output reg [3:0] Result,
    output reg carry
);

always @(A,B,con) begin
    case (con)
        3'b000: {carry, Result} = A + B;  // Addition
        3'b001: {carry, Result} = A - B;  // Subtraction
        3'b010: begin                     // AND
            Result = A & B;
            carry = 0;
        end
        3'b011: begin                     // OR
            Result = A | B;
            carry = 0;
        end
        3'b100: begin                     // XOR
            Result = A ^ B;
            carry = 0;
        end
        3'b101: begin                     // NOT
            Result = ~A;
            carry = 0;
        end
        default: begin                    // Default case
            Result = 4'b0000;
            carry = 0;
        end
    endcase
end

endmodule
