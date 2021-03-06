//
// Test Bench Module CatRecognizer_lib.weights_memory_tester.weights_memory_tester
//
// Created:
//          by - amitb.UNKNOWN (DESKTOP-GIFQ7HQ)
//          at - 18:37:21 25/11/2018
//
// Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
//
`resetall
`timescale 1ns/10ps
module weights_memory_tester (clock,
                              reset,
                              address,
                              en_read,
                              data_out
                             );

// Local declarations

parameter DATA_WIDTH = 5;
parameter Addr_Depth = 12;


output clock;
output reset;
output address;
output en_read;
input  data_out;

logic                    clock;
logic                    reset;
wire  [Addr_Depth - 1:0] address;
logic                    en_read;
wire  [DATA_WIDTH - 1:0] data_out;


initial begin
    clock <= 1'b0;

	reset <= 1'b1;
	#10 reset <= 1'b0;
end

initial begin forever
    #5 clock = ~clock;
end

endmodule // weights_memory_tester


