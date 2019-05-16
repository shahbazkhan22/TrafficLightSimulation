`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:09:25 05/17/2019 
// Design Name: 
// Module Name:    traffic 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module traffic(
    input clk,
    input rst,
    output reg [2:0] traffic_A,
    output reg [2:0] traffic_B
    );
	
	reg [5:0] state;
	
	localparam S0 = 6'b000001,
				  S1 = 6'b000010,
	           S2 = 6'b000100,
				  S3 = 6'b001000,
				  S4 = 6'b010000,
				  S5 = 6'b100000;
				  
	reg [3:0] count;
		
	localparam sec5 = 4'd5,
				  sec1 = 4'd1;
				  
	always @(posedge clk or posedge rst)
		if(rst == 1) begin
			state <= S0;
			count <= 0;
		end
		else
			case(state)
				S0: if(count<sec5) begin
					state <= S0;
					count <= count+1;
				end
				else begin
					state <= S1;
					count <= 0;
				end
				S1: if(count<sec1) begin
					state <= S1;
					count <= count+1;
				end
				else begin
					state <= S2;
					count <= 0;
				end
				S2: if(count<sec1) begin
					state <= S2;
					count <= count+1;
				end
				else begin
					state <= S3;
					count <= 0;
				end
				S3: if(count<sec5) begin
					state <= S3;
					count <= count+1;
				end
				else begin
					state <= S4;
					count <= 0;
				end
				S4: if(count<sec1) begin
					state <= S4;
					count <= count+1;
				end
				else begin
					state <= S5;
					count <= 0;
				end
				S5: if(count<sec1) begin
					state <= S5;
					count <= count+1;
				end
				else begin
					state <= S0;
					count <= 0;
				end
				
				default begin
					state <= S0;
				end
			endcase
			
	always @(*)
		begin
			case(state)
			S0: begin
				traffic_A <= 3'b001;
				traffic_B <= 3'b100;
				end
			
			S1: begin
				traffic_A <= 3'b010;
				traffic_B <= 3'b100;
				end
				
			S2: begin
				traffic_A <= 3'b100;
				traffic_B <= 3'b100;
				end
				
			S3: begin
				traffic_A <= 3'b100;
				traffic_B <= 3'b001;
				end
				
			S4: begin
				traffic_A <= 3'b100;
				traffic_B <= 3'b010;
				end
				
			S5: begin
				traffic_A <= 3'b100;
				traffic_B <= 3'b100;
				end
				
			default begin
				traffic_A <= 3'b100;
				traffic_B <= 3'b100;
				end
				
			endcase
		
		end
		
				
endmodule
