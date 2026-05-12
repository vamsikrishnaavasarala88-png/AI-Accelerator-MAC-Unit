module mac_unit_4bit (
    input clk,
    input reset,
    input [3:0] A,
    input [3:0] B,
    output reg [7:0] result
);

always @(posedge clk or posedge reset)
begin
    if(reset)
        result <= 0;
    else
        result <= result + (A * B);
end

endmodule
