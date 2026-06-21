module alu_tb;
    reg [3:0] a,b;
    reg [2:0] sel;
    wire [4:0] y;

alu uut(
    .a(a),
    .b(b),
    .sel(sel),
    .y(y)
);

initial begin
    $dumpfile("alu_wave.vcd");
    $dumpvars(0,alu_tb);
    $display("A B SEL | Y");

    // test 1 : ADD
    a=4'b1111;b=4'b1010;sel=3'b000;#10;
    $display("%b %b %b | %b",a,b,sel,y);

    // test 2 : SUB
    a=4'b1111;b=4'b1010;sel=3'b001;#10;
    $display("%b %b %b | %b",a,b,sel,y);

    // test 3 : AND_OP
    a=4'b1111;b=4'b1010;sel=3'b010;#10;
    $display("%b %b %b | %b",a,b,sel,y);

    // test 4 : OR_OP
    a=4'b1111;b=4'b1010;sel=3'b011;#10;
    $display("%b %b %b | %b",a,b,sel,y);

    // test 5 : NOT_OP
    a=4'b1111;b=4'b1010;sel=3'b100;#10;
    $display("%b %b %b | %b",a,b,sel,y);

    // test 6 : XOR_OP
    a=4'b1111;b=4'b1010;sel=3'b101;#10;
    $display("%b %b %b | %b",a,b,sel,y);

    // test 7 : SHL
    a=4'b1111;b=4'b1010;sel=3'b110;#10;
    $display("%b %b %b | %b",a,b,sel,y);

    // test 8 : SHR
    a=4'b1111;b=4'b1010;sel=3'b111;#10;
    $display("%b %b %b | %b",a,b,sel,y);

    $finish;
end
endmodule
