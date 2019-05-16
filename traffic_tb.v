`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:06:25 05/17/2019
// Design Name:   traffic
// Module Name:   F:/My Documents/Verilog/traffic/traffic_tb.v
// Project Name:  traffic
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: traffic
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

`define clk_period 1000000000

module traffic_tb;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [2:0] traffic_A;
	wire [2:0] traffic_B;

	// Instantiate the Unit Under Test (UUT)
	traffic uut (
		.clk(clk), 
		.rst(rst), 
		.traffic_A(traffic_A), 
		.traffic_B(traffic_B)
	);
	
	initial clk = 1;
	always #(`clk_period/2) clk = ~clk;
	initial begin
		// Initialize Inputs
		rst = 0;
		#`clk_period;
		rst = 1;
		#`clk_period;
		rst = 0;
		#(`clk_period*200);
		$stop;
        
		// Add stimulus here

	end
      
endmodule

