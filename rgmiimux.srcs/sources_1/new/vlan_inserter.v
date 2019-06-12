`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/12/2019 01:18:21 AM
// Design Name: 
// Module Name: vlan_inserter
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


module vlan_inserter #(
    integer VLAN_IDENTIFIER = 0
)
(
    input arstn,

    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis_aclk, ASSOCIATED_BUSIF s_axis:m_axis" *)
    input axis_aclk,
    input [7:0] s_axis_tdata,
    input s_axis_tlast,
    input s_axis_tvalid,
    output [7:0] m_axis_tdata,
    output m_axis_tlast,
    output m_axis_tvalid
    );

    reg rstn;
    reg [15:0] counter;
    reg [31:0] tdata_shift;
    reg [3:0] tlast_shift;
    reg [3:0] tvalid_shift;

    assign m_axis_tdata = counter < 12 ? s_axis_tdata : (counter == 12 ? 8'h81 : (counter == 13 ? 8'b0 : (counter == 14 ? 8'b0 : (counter == 15 ? VLAN_IDENTIFIER : tdata_shift[31:24]))));
    assign m_axis_tlast = tlast_shift[3:3];
    assign m_axis_tvalid = s_axis_tvalid | tvalid_shift[3:3];

    always @ (posedge axis_aclk) begin
        rstn <= arstn;
        if (!rstn) begin
            counter <= 0;
            tdata_shift <= 0;
            tlast_shift <= 0;
            tvalid_shift <= 0;
        end else begin
            tdata_shift <= {tdata_shift, s_axis_tdata};
            tlast_shift <= {tlast_shift, s_axis_tlast};
            tvalid_shift <= {tvalid_shift, s_axis_tvalid};
            if (s_axis_tvalid) begin
                counter <= counter + 1;
            end else if (m_axis_tlast) begin
                counter <= 0;
            end
        end
    end
endmodule
