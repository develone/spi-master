// FPGA projects using Verilog/ VHDL
// fpga4student.com: FPGA projects, Verilog projects, VHDL projects
// Verilog code for up counter
module up_counter(input clk, reset, output[7:0] counter
    );
reg [7:0] counter_up;

// up counter
always @(posedge clk or posedge reset)
begin
if(reset)
 counter_up <= 8'd0;
else
 counter_up <= counter_up + 8'd1;
end 
assign counter = counter_up;
endmodule