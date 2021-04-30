`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/10/2020 12:00:55 PM
// Design Name: 
// Module Name: vio_file
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module vio_file(
    input clk
    );
    wire [7:0]X1,X2,X3,X4;
    wire [31:0]A1,A2,A3,A4,y;
    da d1(clk,X1,X2,X3,X4,A1,A2,A3,A4,y);
    vio_0 da (
      .clk(clk),                // input wire clk
      .probe_in0(y),    // input wire [31 : 0] probe_in0
      .probe_out0(X1),  // output wire [7 : 0] probe_out0
      .probe_out1(X2),  // output wire [7 : 0] probe_out1
      .probe_out2(X3),  // output wire [7 : 0] probe_out2
      .probe_out3(X4),  // output wire [7 : 0] probe_out3
      .probe_out4(A1),  // output wire [31 : 0] probe_out4
      .probe_out5(A2),  // output wire [31 : 0] probe_out5
      .probe_out6(A3),  // output wire [31 : 0] probe_out6
      .probe_out7(A4)  // output wire [31 : 0] probe_out7
    );
endmodule
