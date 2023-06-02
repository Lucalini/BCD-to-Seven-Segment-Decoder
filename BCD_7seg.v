`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/26/2023 06:33:44 PM
// Design Name: 
// Module Name: BCD_7seg
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


module BCD_7seg(BCD, anode_switches, seg, an );
    input [3:0] BCD;
    input [3:0] anode_switches;
    output reg [7:0] seg;
    output reg [3:0] an;
    
    always @*
    begin
        case (BCD)
            0: seg = 8'b11111111 ;
            1: seg = 8'b10011111 ;
            2: seg = 8'b00100101 ;
            3: seg = 8'b00001101 ;
            4: seg = 8'b10011001 ; 
            5: seg = 8'b01001001 ;
            6: seg = 8'b01000001 ;
            7: seg = 8'b00011111 ;
            8: seg = 8'b00000001 ;
            9: seg = 8'b00001001 ;
            default: seg = 8'b11111111;
        endcase
        // Anode selection
        case(anode_switches)
            4'b0000: an = 4'b1111;
            4'b0001: an = 4'b1110;
            4'b0010: an = 4'b1101;
            4'b0100: an = 4'b1011;
            4'b1000: an = 4'b0111;
            default: an = 4'b1111;
        endcase
    end
endmodule
