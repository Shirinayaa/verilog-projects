module traffic_light_tb;
    reg clk,reset;
    wire red,yellow,green;

traffic_light uut(
    .clk(clk),
    .reset(reset),
    .red(red),
    .green(green),
    .yellow(yellow)
);

initial begin
    $dumpfile("trffic_light_wave.vcd");
    $dumpvars(0,traffic_light_tb);
    $display("clk reset | red green yellow");

    reset=1;clk=0;#10;
    reset=0;//#10;
    $display("%b %b %b", red, yellow, green);

    // test 1
    clk=1;//#10;
    $display("%b %b | %b %b %b",clk,reset,red,green,yellow);
    clk=0;#10;

    // test 2
    clk=1;//#10;
    $display("%b %b | %b %b %b",clk,reset,red,green,yellow);
    clk=0;#10;

    //test 3
    clk=1;//#10;
    $display("%b %b | %b %b %b",clk,reset,red,green,yellow);
    clk=0;#10;

    // test 4
    clk=1;//#10;
    $display("%b %b | %b %b %b",clk,reset,red,green,yellow);
    clk=0;#10;

    $finish;
end
endmodule
