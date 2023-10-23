// FPGA projects using Verilog/ VHDL
// fpga4student.com: FPGA projects, Verilog projects, VHDL projects
// Verilog code for up counter with testbench
// Testbench Verilog code for up counter
module upcounter_testbench();
reg clk, reset;
wire [7:0] counter;

up_counter dut(clk, reset, counter);
initial begin 
clk=0;
forever #5 clk=~clk;
end
initial begin
reset=1;
#20;
reset=0;
end

initial
begin
#6920000
$finish();
end

 initial 
    begin
      // Required to dump signals to EPWave
      $dumpfile("dump.vcd");
      $dumpvars(0);
    end

endmodule 