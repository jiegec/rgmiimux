// (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:rgmiimux_module:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_rgmiimux_module_0_0 (
  arstn,
  rgmii_s_rx_aclk,
  rgmii_s_rx_axis_mac_tdata,
  rgmii_s_rx_axis_mac_tlast,
  rgmii_s_rx_axis_mac_tuser,
  rgmii_s_rx_axis_mac_tvalid,
  rgmii_m_tx_axis_mac_tdata,
  rgmii_m_tx_axis_mac_tlast,
  rgmii_m_tx_axis_mac_tuser,
  rgmii_m_tx_axis_mac_tvalid,
  rgmii_m_tx_axis_mac_tdest
);

input wire arstn;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rgmii_s_rx_aclk, ASSOCIATED_BUSIF rgmii_s_rx_axis_mac:rgmii_m_tx_axis_mac, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN /tri_mode_ethernet_mac_0/rx_mac_aclk" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 rgmii_s_rx_aclk CLK" *)
input wire rgmii_s_rx_aclk;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rgmii_s_rx_axis_mac TDATA" *)
input wire [7 : 0] rgmii_s_rx_axis_mac_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rgmii_s_rx_axis_mac TLAST" *)
input wire rgmii_s_rx_axis_mac_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rgmii_s_rx_axis_mac TUSER" *)
input wire rgmii_s_rx_axis_mac_tuser;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rgmii_s_rx_axis_mac, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN /tri_mode_ethernet_mac_0/rx_mac_aclk, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rgmii_s_rx_axis_mac TVALID" *)
input wire rgmii_s_rx_axis_mac_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rgmii_m_tx_axis_mac TDATA" *)
output wire [7 : 0] rgmii_m_tx_axis_mac_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rgmii_m_tx_axis_mac TLAST" *)
output wire rgmii_m_tx_axis_mac_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rgmii_m_tx_axis_mac TUSER" *)
output wire rgmii_m_tx_axis_mac_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rgmii_m_tx_axis_mac TVALID" *)
output wire rgmii_m_tx_axis_mac_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rgmii_m_tx_axis_mac, TDATA_NUM_BYTES 1, TDEST_WIDTH 8, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN /tri_mode_ethernet_mac_0/rx_mac_aclk, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rgmii_m_tx_axis_mac TDEST" *)
output wire [7 : 0] rgmii_m_tx_axis_mac_tdest;

  rgmiimux_module inst (
    .arstn(arstn),
    .rgmii_s_rx_aclk(rgmii_s_rx_aclk),
    .rgmii_s_rx_axis_mac_tdata(rgmii_s_rx_axis_mac_tdata),
    .rgmii_s_rx_axis_mac_tlast(rgmii_s_rx_axis_mac_tlast),
    .rgmii_s_rx_axis_mac_tuser(rgmii_s_rx_axis_mac_tuser),
    .rgmii_s_rx_axis_mac_tvalid(rgmii_s_rx_axis_mac_tvalid),
    .rgmii_m_tx_axis_mac_tdata(rgmii_m_tx_axis_mac_tdata),
    .rgmii_m_tx_axis_mac_tlast(rgmii_m_tx_axis_mac_tlast),
    .rgmii_m_tx_axis_mac_tuser(rgmii_m_tx_axis_mac_tuser),
    .rgmii_m_tx_axis_mac_tvalid(rgmii_m_tx_axis_mac_tvalid),
    .rgmii_m_tx_axis_mac_tdest(rgmii_m_tx_axis_mac_tdest)
  );
endmodule
