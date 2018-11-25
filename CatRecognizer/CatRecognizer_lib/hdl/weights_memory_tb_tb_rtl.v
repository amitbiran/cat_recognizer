//
// Test Bench Module CatRecognizer_lib.weights_memory_tb.weights_memory_tester
//
// Created:
//          by - amitb.UNKNOWN (DESKTOP-GIFQ7HQ)
//          at - 18:37:20 25/11/2018
//
// Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
//
`resetall
`timescale 1ns/10ps

module weights_memory_tb;

// Local declarations
parameter DATA_WIDTH = 5;
parameter Addr_Depth = 12;

// Internal signal declarations
logic                    clock;
logic                    reset;
wire  [Addr_Depth - 1:0] address;
logic                    en_read;
wire  [DATA_WIDTH - 1:0] data_out;


weights_memory #(DATA_WIDTH,Addr_Depth) U_0(
   .clock    (clock),
   .reset    (reset),
   .address  (address),
   .en_read  (en_read),
   .data_out (data_out)
);

weights_memory_tester #(DATA_WIDTH,Addr_Depth) U_1(
   .clock    (clock),
   .reset    (reset),
   .address  (address),
   .en_read  (en_read),
   .data_out (data_out)
);

endmodule // weights_memory_tb


