module alu(
    input [3:0] a,b,
    input [2:0] sel,
    output reg [4:0] y
);

parameter ADD = 3'b000;
parameter SUB = 3'b001;
parameter AND_OP = 3'b010;
parameter OR_OP = 3'b011;
parameter NOT_OP = 3'b100;
parameter XOR_OP = 3'b101;
parameter SHL = 3'b110;
parameter SHR = 3'b111;

always@(*)
begin
    case (sel)
        
        ADD: y=a+b;
        SUB: y=a-b; 
        AND_OP: y=a&b;
        OR_OP: y=a|b;
        NOT_OP: y= {1'b0, ~a};
        XOR_OP: y=a^b;
        SHL: y=a<<1;
        SHR: y=a>>1;
        default: y=0;

    endcase
end
endmodule
