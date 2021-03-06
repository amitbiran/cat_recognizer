//
// Verilog Module CatRecognizer_lib.Neuron
//
// Created:
//          by - amitb.UNKNOWN (DESKTOP-GIFQ7HQ)
//          at - 19:49:52 21/11/2018
//
// using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
//

`resetall
`timescale 1ns/10ps
module Neuron(x,w,out) ;
	input [7:0] x;
	input [15:0] w;
	output [31:0] out;
	
	reg signed [15:0] x_signed; 
	reg signed [15:0] w_signed;
	reg signed [31:0] c;
	
	always @(*) begin
	 x_signed = {8'h00, x};
	 w_signed = w;
	 c = x_signed*w_signed;
	end
	
	assign out = c;
	
// ### Please start your Verilog code here ### 

endmodule
