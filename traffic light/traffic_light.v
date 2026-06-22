module traffic_light(
    input clk,reset,
    output reg red,yellow,green
);

reg [1:0] ps,ns;

// state encoding
parameter RED = 2'b00;
parameter YELLOW = 2'b01;
parameter GREEN = 2'b10;

// state memory
always @(posedge clk or posedge reset)
begin
    if(reset)
        ps <= RED;
    else 
        ps <= ns;
end

// next state logic
always @(*)
begin 
    case(ps)
        RED: ns = GREEN;
        GREEN: ns = YELLOW;
        YELLOW: ns = RED;
        default: ns = RED;
    endcase
end

// output logic (moore)
always @(*)
begin
    case(ps)
        RED:
        begin
            red =1;
            green = 0;
            yellow = 0;
        end
        GREEN:
        begin
            red = 0;
            green = 1;
            yellow =0;
        end
        YELLOW: 
        begin
            red = 0;
            green = 0;
            yellow = 1;
        end
    endcase
end
endmodule
