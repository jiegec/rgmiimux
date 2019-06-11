`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/11/2019 07:19:21 PM
// Design Name: 
// Module Name: rgmiimux_module
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


module rgmiimux_module(
    input arstn,

    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rgmii_s_rx_aclk, ASSOCIATED_BUSIF rgmii_s_rx_axis_mac:rgmii_m_tx_axis_mac" *)
    input rgmii_s_rx_aclk,
    input [7:0] rgmii_s_rx_axis_mac_tdata,
    input rgmii_s_rx_axis_mac_tlast,
    input rgmii_s_rx_axis_mac_tuser,
    input rgmii_s_rx_axis_mac_tvalid,

    output [7:0] rgmii_m_tx_axis_mac_tdata,
    output rgmii_m_tx_axis_mac_tlast,
    output rgmii_m_tx_axis_mac_tuser,
    output rgmii_m_tx_axis_mac_tvalid,
    output reg [7:0] rgmii_m_tx_axis_mac_tdest
    );

    reg [127:0] rgmii_tdata_shift;
    reg [15:0] rgmii_tlast_shift;
    reg [15:0] rgmii_tvalid_shift;
    reg [15:0] rgmii_counter;
    reg rstn;

    assign rgmii_m_tx_axis_mac_tdata = rgmii_counter < 28 ? rgmii_tdata_shift[127:120] : rgmii_tdata_shift[95:88];
    assign rgmii_m_tx_axis_mac_tlast = rgmii_tlast_shift[11:11];
    assign rgmii_m_tx_axis_mac_tuser = 0;
    assign rgmii_m_tx_axis_mac_tvalid = rgmii_tvalid_shift[15:15] & rgmii_tvalid_shift[11:11];

    always @ (posedge rgmii_s_rx_aclk) begin
        rstn <= arstn;
        if (!rstn) begin
            rgmii_counter <= 0;
            rgmii_m_tx_axis_mac_tdest <= 0;
            rgmii_tdata_shift <= 0;
            rgmii_tlast_shift <= 0;
            rgmii_tvalid_shift <= 0;
        end else begin
            rgmii_tdata_shift <= {rgmii_tdata_shift, rgmii_s_rx_axis_mac_tdata};
            rgmii_tlast_shift <= {rgmii_tlast_shift, rgmii_s_rx_axis_mac_tlast};
            rgmii_tvalid_shift <= {rgmii_tvalid_shift, rgmii_s_rx_axis_mac_tvalid};
            if (rgmii_m_tx_axis_mac_tlast) begin
                rgmii_counter <= 0;
                rgmii_m_tx_axis_mac_tdest <= 0;
            end else if (rgmii_s_rx_axis_mac_tvalid) begin
                rgmii_counter <= rgmii_counter + 1;
                if (rgmii_counter == 15) begin
                    rgmii_m_tx_axis_mac_tdest <= rgmii_s_rx_axis_mac_tdata;
                end
            end
        end
    end
endmodule
