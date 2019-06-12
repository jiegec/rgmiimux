//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
//Date        : Wed Jun 12 08:24:43 2019
//Host        : oslab-Ubuntu16 running 64-bit Ubuntu 18.04.2 LTS
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=72,numReposBlks=60,numNonXlnxBlks=0,numHierBlks=12,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=5,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (clk125M,
    clk200M,
    rgmii1_rd,
    rgmii1_rx_ctl,
    rgmii1_rxc,
    rgmii1_td,
    rgmii1_tx_ctl,
    rgmii1_txc,
    rgmii2_rd,
    rgmii2_rx_ctl,
    rgmii2_rxc,
    rgmii2_td,
    rgmii2_tx_ctl,
    rgmii2_txc,
    rgmii3_rd,
    rgmii3_rx_ctl,
    rgmii3_rxc,
    rgmii3_td,
    rgmii3_tx_ctl,
    rgmii3_txc,
    rgmii4_rd,
    rgmii4_rx_ctl,
    rgmii4_rxc,
    rgmii4_td,
    rgmii4_tx_ctl,
    rgmii4_txc,
    rgmii_rd,
    rgmii_rx_ctl,
    rgmii_rxc,
    rgmii_td,
    rgmii_tx_ctl,
    rgmii_txc,
    rstn);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK125M CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK125M, ASSOCIATED_RESET rstn, CLK_DOMAIN design_1_clk125M, FREQ_HZ 125000000, PHASE 0" *) input clk125M;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK200M CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK200M, CLK_DOMAIN design_1_clk200M, FREQ_HZ 200000000, PHASE 0.000" *) input clk200M;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii1 RD" *) input [3:0]rgmii1_rd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii1 RX_CTL" *) input rgmii1_rx_ctl;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii1 RXC" *) input rgmii1_rxc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii1 TD" *) output [3:0]rgmii1_td;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii1 TX_CTL" *) output rgmii1_tx_ctl;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii1 TXC" *) output rgmii1_txc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii2 RD" *) input [3:0]rgmii2_rd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii2 RX_CTL" *) input rgmii2_rx_ctl;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii2 RXC" *) input rgmii2_rxc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii2 TD" *) output [3:0]rgmii2_td;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii2 TX_CTL" *) output rgmii2_tx_ctl;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii2 TXC" *) output rgmii2_txc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii3 RD" *) input [3:0]rgmii3_rd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii3 RX_CTL" *) input rgmii3_rx_ctl;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii3 RXC" *) input rgmii3_rxc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii3 TD" *) output [3:0]rgmii3_td;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii3 TX_CTL" *) output rgmii3_tx_ctl;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii3 TXC" *) output rgmii3_txc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii4 RD" *) input [3:0]rgmii4_rd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii4 RX_CTL" *) input rgmii4_rx_ctl;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii4 RXC" *) input rgmii4_rxc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii4 TD" *) output [3:0]rgmii4_td;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii4 TX_CTL" *) output rgmii4_tx_ctl;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii4 TXC" *) output rgmii4_txc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii RD" *) input [3:0]rgmii_rd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii RX_CTL" *) input rgmii_rx_ctl;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii RXC" *) input rgmii_rxc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii TD" *) output [3:0]rgmii_td;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii TX_CTL" *) output rgmii_tx_ctl;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 rgmii TXC" *) output rgmii_txc;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RSTN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RSTN, POLARITY ACTIVE_LOW" *) input rstn;

  wire M00_AXIS_ACLK_1;
  wire M01_AXIS_ACLK_1;
  wire M02_AXIS_ACLK_1;
  wire M03_AXIS_ACLK_1;
  wire S00_AXIS_ACLK_1;
  wire [7:0]axis_interconnect_0_M00_AXIS_TDATA;
  wire axis_interconnect_0_M00_AXIS_TLAST;
  wire axis_interconnect_0_M00_AXIS_TREADY;
  wire [0:0]axis_interconnect_0_M00_AXIS_TUSER;
  wire axis_interconnect_0_M00_AXIS_TVALID;
  wire [7:0]axis_interconnect_0_M01_AXIS_TDATA;
  wire axis_interconnect_0_M01_AXIS_TLAST;
  wire axis_interconnect_0_M01_AXIS_TREADY;
  wire [0:0]axis_interconnect_0_M01_AXIS_TUSER;
  wire axis_interconnect_0_M01_AXIS_TVALID;
  wire [7:0]axis_interconnect_0_M02_AXIS_TDATA;
  wire axis_interconnect_0_M02_AXIS_TLAST;
  wire axis_interconnect_0_M02_AXIS_TREADY;
  wire [0:0]axis_interconnect_0_M02_AXIS_TUSER;
  wire axis_interconnect_0_M02_AXIS_TVALID;
  wire [7:0]axis_interconnect_0_M03_AXIS_TDATA;
  wire axis_interconnect_0_M03_AXIS_TLAST;
  wire axis_interconnect_0_M03_AXIS_TREADY;
  wire [0:0]axis_interconnect_0_M03_AXIS_TUSER;
  wire axis_interconnect_0_M03_AXIS_TVALID;
  wire [7:0]axis_interconnect_1_M00_AXIS_TDATA;
  wire axis_interconnect_1_M00_AXIS_TLAST;
  wire axis_interconnect_1_M00_AXIS_TREADY;
  wire [0:0]axis_interconnect_1_M00_AXIS_TUSER;
  wire axis_interconnect_1_M00_AXIS_TVALID;
  wire glbl_rstn_0_1;
  wire gtx_clk_0_1;
  wire refclk_0_1;
  wire [7:0]rgmiimux_module_0_rgmii_m_tx_axis_mac_TDATA;
  wire [7:0]rgmiimux_module_0_rgmii_m_tx_axis_mac_TDEST;
  wire rgmiimux_module_0_rgmii_m_tx_axis_mac_TLAST;
  wire rgmiimux_module_0_rgmii_m_tx_axis_mac_TUSER;
  wire rgmiimux_module_0_rgmii_m_tx_axis_mac_TVALID;
  wire tri_mode_ethernet_mac_0_gtx_clk90_out;
  wire tri_mode_ethernet_mac_0_gtx_clk_out;
  wire [7:0]tri_mode_ethernet_mac_0_m_axis_rx_TDATA;
  wire tri_mode_ethernet_mac_0_m_axis_rx_TLAST;
  wire tri_mode_ethernet_mac_0_m_axis_rx_TUSER;
  wire tri_mode_ethernet_mac_0_m_axis_rx_TVALID;
  wire [3:0]tri_mode_ethernet_mac_0_rgmii_RD;
  wire tri_mode_ethernet_mac_0_rgmii_RXC;
  wire tri_mode_ethernet_mac_0_rgmii_RX_CTL;
  wire [3:0]tri_mode_ethernet_mac_0_rgmii_TD;
  wire tri_mode_ethernet_mac_0_rgmii_TXC;
  wire tri_mode_ethernet_mac_0_rgmii_TX_CTL;
  wire tri_mode_ethernet_mac_0_rx_reset;
  wire tri_mode_ethernet_mac_0_tx_enable;
  wire tri_mode_ethernet_mac_0_tx_mac_aclk;
  wire [7:0]tri_mode_ethernet_mac_1_m_axis_rx_TDATA;
  wire tri_mode_ethernet_mac_1_m_axis_rx_TLAST;
  wire tri_mode_ethernet_mac_1_m_axis_rx_TVALID;
  wire [3:0]tri_mode_ethernet_mac_1_rgmii_RD;
  wire tri_mode_ethernet_mac_1_rgmii_RXC;
  wire tri_mode_ethernet_mac_1_rgmii_RX_CTL;
  wire [3:0]tri_mode_ethernet_mac_1_rgmii_TD;
  wire tri_mode_ethernet_mac_1_rgmii_TXC;
  wire tri_mode_ethernet_mac_1_rgmii_TX_CTL;
  wire tri_mode_ethernet_mac_1_rx_mac_aclk;
  wire tri_mode_ethernet_mac_1_rx_reset;
  wire tri_mode_ethernet_mac_1_tx_enable;
  wire [7:0]tri_mode_ethernet_mac_2_m_axis_rx_TDATA;
  wire tri_mode_ethernet_mac_2_m_axis_rx_TLAST;
  wire tri_mode_ethernet_mac_2_m_axis_rx_TVALID;
  wire [3:0]tri_mode_ethernet_mac_2_rgmii_RD;
  wire tri_mode_ethernet_mac_2_rgmii_RXC;
  wire tri_mode_ethernet_mac_2_rgmii_RX_CTL;
  wire [3:0]tri_mode_ethernet_mac_2_rgmii_TD;
  wire tri_mode_ethernet_mac_2_rgmii_TXC;
  wire tri_mode_ethernet_mac_2_rgmii_TX_CTL;
  wire tri_mode_ethernet_mac_2_rx_mac_aclk;
  wire tri_mode_ethernet_mac_2_rx_reset;
  wire tri_mode_ethernet_mac_2_tx_enable;
  wire [7:0]tri_mode_ethernet_mac_3_m_axis_rx_TDATA;
  wire tri_mode_ethernet_mac_3_m_axis_rx_TLAST;
  wire tri_mode_ethernet_mac_3_m_axis_rx_TVALID;
  wire [3:0]tri_mode_ethernet_mac_3_rgmii_RD;
  wire tri_mode_ethernet_mac_3_rgmii_RXC;
  wire tri_mode_ethernet_mac_3_rgmii_RX_CTL;
  wire [3:0]tri_mode_ethernet_mac_3_rgmii_TD;
  wire tri_mode_ethernet_mac_3_rgmii_TXC;
  wire tri_mode_ethernet_mac_3_rgmii_TX_CTL;
  wire tri_mode_ethernet_mac_3_rx_mac_aclk;
  wire tri_mode_ethernet_mac_3_rx_reset;
  wire tri_mode_ethernet_mac_3_tx_enable;
  wire [7:0]tri_mode_ethernet_mac_4_m_axis_rx_TDATA;
  wire tri_mode_ethernet_mac_4_m_axis_rx_TLAST;
  wire tri_mode_ethernet_mac_4_m_axis_rx_TVALID;
  wire [3:0]tri_mode_ethernet_mac_4_rgmii_RD;
  wire tri_mode_ethernet_mac_4_rgmii_RXC;
  wire tri_mode_ethernet_mac_4_rgmii_RX_CTL;
  wire [3:0]tri_mode_ethernet_mac_4_rgmii_TD;
  wire tri_mode_ethernet_mac_4_rgmii_TXC;
  wire tri_mode_ethernet_mac_4_rgmii_TX_CTL;
  wire tri_mode_ethernet_mac_4_rx_mac_aclk;
  wire tri_mode_ethernet_mac_4_rx_reset;
  wire tri_mode_ethernet_mac_4_tx_enable;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_1_Res;
  wire [0:0]util_vector_logic_2_Res;
  wire [0:0]util_vector_logic_3_Res;
  wire [0:0]util_vector_logic_4_Res;
  wire [7:0]vlan_inserter_0_m_axis_TDATA;
  wire vlan_inserter_0_m_axis_TLAST;
  wire vlan_inserter_0_m_axis_TVALID;
  wire [7:0]vlan_inserter_1_m_axis_TDATA;
  wire vlan_inserter_1_m_axis_TLAST;
  wire vlan_inserter_1_m_axis_TVALID;
  wire [7:0]vlan_inserter_2_m_axis_TDATA;
  wire vlan_inserter_2_m_axis_TLAST;
  wire vlan_inserter_2_m_axis_TVALID;
  wire [7:0]vlan_inserter_3_m_axis_TDATA;
  wire vlan_inserter_3_m_axis_TLAST;
  wire vlan_inserter_3_m_axis_TVALID;
  wire [79:0]xlconstant_0_dout;
  wire [79:0]xlconstant_1_dout;

  assign glbl_rstn_0_1 = rstn;
  assign gtx_clk_0_1 = clk125M;
  assign refclk_0_1 = clk200M;
  assign rgmii1_td[3:0] = tri_mode_ethernet_mac_1_rgmii_TD;
  assign rgmii1_tx_ctl = tri_mode_ethernet_mac_1_rgmii_TX_CTL;
  assign rgmii1_txc = tri_mode_ethernet_mac_1_rgmii_TXC;
  assign rgmii2_td[3:0] = tri_mode_ethernet_mac_2_rgmii_TD;
  assign rgmii2_tx_ctl = tri_mode_ethernet_mac_2_rgmii_TX_CTL;
  assign rgmii2_txc = tri_mode_ethernet_mac_2_rgmii_TXC;
  assign rgmii3_td[3:0] = tri_mode_ethernet_mac_3_rgmii_TD;
  assign rgmii3_tx_ctl = tri_mode_ethernet_mac_3_rgmii_TX_CTL;
  assign rgmii3_txc = tri_mode_ethernet_mac_3_rgmii_TXC;
  assign rgmii4_td[3:0] = tri_mode_ethernet_mac_4_rgmii_TD;
  assign rgmii4_tx_ctl = tri_mode_ethernet_mac_4_rgmii_TX_CTL;
  assign rgmii4_txc = tri_mode_ethernet_mac_4_rgmii_TXC;
  assign rgmii_td[3:0] = tri_mode_ethernet_mac_0_rgmii_TD;
  assign rgmii_tx_ctl = tri_mode_ethernet_mac_0_rgmii_TX_CTL;
  assign rgmii_txc = tri_mode_ethernet_mac_0_rgmii_TXC;
  assign tri_mode_ethernet_mac_0_rgmii_RD = rgmii_rd[3:0];
  assign tri_mode_ethernet_mac_0_rgmii_RXC = rgmii_rxc;
  assign tri_mode_ethernet_mac_0_rgmii_RX_CTL = rgmii_rx_ctl;
  assign tri_mode_ethernet_mac_1_rgmii_RD = rgmii1_rd[3:0];
  assign tri_mode_ethernet_mac_1_rgmii_RXC = rgmii1_rxc;
  assign tri_mode_ethernet_mac_1_rgmii_RX_CTL = rgmii1_rx_ctl;
  assign tri_mode_ethernet_mac_2_rgmii_RD = rgmii2_rd[3:0];
  assign tri_mode_ethernet_mac_2_rgmii_RXC = rgmii2_rxc;
  assign tri_mode_ethernet_mac_2_rgmii_RX_CTL = rgmii2_rx_ctl;
  assign tri_mode_ethernet_mac_3_rgmii_RD = rgmii3_rd[3:0];
  assign tri_mode_ethernet_mac_3_rgmii_RXC = rgmii3_rxc;
  assign tri_mode_ethernet_mac_3_rgmii_RX_CTL = rgmii3_rx_ctl;
  assign tri_mode_ethernet_mac_4_rgmii_RD = rgmii4_rd[3:0];
  assign tri_mode_ethernet_mac_4_rgmii_RXC = rgmii4_rxc;
  assign tri_mode_ethernet_mac_4_rgmii_RX_CTL = rgmii4_rx_ctl;
  design_1_axis_interconnect_0_0 axis_interconnect_0
       (.ACLK(gtx_clk_0_1),
        .ARESETN(glbl_rstn_0_1),
        .M00_AXIS_ACLK(M00_AXIS_ACLK_1),
        .M00_AXIS_ARESETN(tri_mode_ethernet_mac_1_tx_enable),
        .M00_AXIS_tdata(axis_interconnect_0_M00_AXIS_TDATA),
        .M00_AXIS_tlast(axis_interconnect_0_M00_AXIS_TLAST),
        .M00_AXIS_tready(axis_interconnect_0_M00_AXIS_TREADY),
        .M00_AXIS_tuser(axis_interconnect_0_M00_AXIS_TUSER),
        .M00_AXIS_tvalid(axis_interconnect_0_M00_AXIS_TVALID),
        .M01_AXIS_ACLK(M01_AXIS_ACLK_1),
        .M01_AXIS_ARESETN(tri_mode_ethernet_mac_2_tx_enable),
        .M01_AXIS_tdata(axis_interconnect_0_M01_AXIS_TDATA),
        .M01_AXIS_tlast(axis_interconnect_0_M01_AXIS_TLAST),
        .M01_AXIS_tready(axis_interconnect_0_M01_AXIS_TREADY),
        .M01_AXIS_tuser(axis_interconnect_0_M01_AXIS_TUSER),
        .M01_AXIS_tvalid(axis_interconnect_0_M01_AXIS_TVALID),
        .M02_AXIS_ACLK(M02_AXIS_ACLK_1),
        .M02_AXIS_ARESETN(tri_mode_ethernet_mac_3_tx_enable),
        .M02_AXIS_tdata(axis_interconnect_0_M02_AXIS_TDATA),
        .M02_AXIS_tlast(axis_interconnect_0_M02_AXIS_TLAST),
        .M02_AXIS_tready(axis_interconnect_0_M02_AXIS_TREADY),
        .M02_AXIS_tuser(axis_interconnect_0_M02_AXIS_TUSER),
        .M02_AXIS_tvalid(axis_interconnect_0_M02_AXIS_TVALID),
        .M03_AXIS_ACLK(M03_AXIS_ACLK_1),
        .M03_AXIS_ARESETN(tri_mode_ethernet_mac_4_tx_enable),
        .M03_AXIS_tdata(axis_interconnect_0_M03_AXIS_TDATA),
        .M03_AXIS_tlast(axis_interconnect_0_M03_AXIS_TLAST),
        .M03_AXIS_tready(axis_interconnect_0_M03_AXIS_TREADY),
        .M03_AXIS_tuser(axis_interconnect_0_M03_AXIS_TUSER),
        .M03_AXIS_tvalid(axis_interconnect_0_M03_AXIS_TVALID),
        .S00_AXIS_ACLK(S00_AXIS_ACLK_1),
        .S00_AXIS_ARESETN(tri_mode_ethernet_mac_0_tx_enable),
        .S00_AXIS_tdata(rgmiimux_module_0_rgmii_m_tx_axis_mac_TDATA),
        .S00_AXIS_tdest(rgmiimux_module_0_rgmii_m_tx_axis_mac_TDEST),
        .S00_AXIS_tlast(rgmiimux_module_0_rgmii_m_tx_axis_mac_TLAST),
        .S00_AXIS_tuser(rgmiimux_module_0_rgmii_m_tx_axis_mac_TUSER),
        .S00_AXIS_tvalid(rgmiimux_module_0_rgmii_m_tx_axis_mac_TVALID));
  design_1_axis_interconnect_1_0 axis_interconnect_1
       (.ACLK(gtx_clk_0_1),
        .ARESETN(glbl_rstn_0_1),
        .M00_AXIS_ACLK(tri_mode_ethernet_mac_0_tx_mac_aclk),
        .M00_AXIS_ARESETN(util_vector_logic_0_Res),
        .M00_AXIS_tdata(axis_interconnect_1_M00_AXIS_TDATA),
        .M00_AXIS_tlast(axis_interconnect_1_M00_AXIS_TLAST),
        .M00_AXIS_tready(axis_interconnect_1_M00_AXIS_TREADY),
        .M00_AXIS_tuser(axis_interconnect_1_M00_AXIS_TUSER),
        .M00_AXIS_tvalid(axis_interconnect_1_M00_AXIS_TVALID),
        .S00_ARB_REQ_SUPPRESS(1'b0),
        .S00_AXIS_ACLK(tri_mode_ethernet_mac_1_rx_mac_aclk),
        .S00_AXIS_ARESETN(util_vector_logic_1_Res),
        .S00_AXIS_tdata(vlan_inserter_0_m_axis_TDATA),
        .S00_AXIS_tlast(vlan_inserter_0_m_axis_TLAST),
        .S00_AXIS_tvalid(vlan_inserter_0_m_axis_TVALID),
        .S01_ARB_REQ_SUPPRESS(1'b0),
        .S01_AXIS_ACLK(tri_mode_ethernet_mac_2_rx_mac_aclk),
        .S01_AXIS_ARESETN(util_vector_logic_2_Res),
        .S01_AXIS_tdata(vlan_inserter_1_m_axis_TDATA),
        .S01_AXIS_tlast(vlan_inserter_1_m_axis_TLAST),
        .S01_AXIS_tvalid(vlan_inserter_1_m_axis_TVALID),
        .S02_ARB_REQ_SUPPRESS(1'b0),
        .S02_AXIS_ACLK(tri_mode_ethernet_mac_3_rx_mac_aclk),
        .S02_AXIS_ARESETN(util_vector_logic_3_Res),
        .S02_AXIS_tdata(vlan_inserter_2_m_axis_TDATA),
        .S02_AXIS_tlast(vlan_inserter_2_m_axis_TLAST),
        .S02_AXIS_tvalid(vlan_inserter_2_m_axis_TVALID),
        .S03_ARB_REQ_SUPPRESS(1'b0),
        .S03_AXIS_ACLK(tri_mode_ethernet_mac_4_rx_mac_aclk),
        .S03_AXIS_ARESETN(util_vector_logic_4_Res),
        .S03_AXIS_tdata(vlan_inserter_3_m_axis_TDATA),
        .S03_AXIS_tlast(vlan_inserter_3_m_axis_TLAST),
        .S03_AXIS_tvalid(vlan_inserter_3_m_axis_TVALID));
  design_1_rgmiimux_module_0_0 rgmiimux_module_0
       (.arstn(glbl_rstn_0_1),
        .rgmii_m_tx_axis_mac_tdata(rgmiimux_module_0_rgmii_m_tx_axis_mac_TDATA),
        .rgmii_m_tx_axis_mac_tdest(rgmiimux_module_0_rgmii_m_tx_axis_mac_TDEST),
        .rgmii_m_tx_axis_mac_tlast(rgmiimux_module_0_rgmii_m_tx_axis_mac_TLAST),
        .rgmii_m_tx_axis_mac_tuser(rgmiimux_module_0_rgmii_m_tx_axis_mac_TUSER),
        .rgmii_m_tx_axis_mac_tvalid(rgmiimux_module_0_rgmii_m_tx_axis_mac_TVALID),
        .rgmii_s_rx_aclk(S00_AXIS_ACLK_1),
        .rgmii_s_rx_axis_mac_tdata(tri_mode_ethernet_mac_0_m_axis_rx_TDATA),
        .rgmii_s_rx_axis_mac_tlast(tri_mode_ethernet_mac_0_m_axis_rx_TLAST),
        .rgmii_s_rx_axis_mac_tuser(tri_mode_ethernet_mac_0_m_axis_rx_TUSER),
        .rgmii_s_rx_axis_mac_tvalid(tri_mode_ethernet_mac_0_m_axis_rx_TVALID));
  design_1_tri_mode_ethernet_mac_0_0 tri_mode_ethernet_mac_0
       (.glbl_rstn(glbl_rstn_0_1),
        .gtx_clk(gtx_clk_0_1),
        .gtx_clk90_out(tri_mode_ethernet_mac_0_gtx_clk90_out),
        .gtx_clk_out(tri_mode_ethernet_mac_0_gtx_clk_out),
        .pause_req(1'b0),
        .pause_val({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .refclk(refclk_0_1),
        .rgmii_rx_ctl(tri_mode_ethernet_mac_0_rgmii_RX_CTL),
        .rgmii_rxc(tri_mode_ethernet_mac_0_rgmii_RXC),
        .rgmii_rxd(tri_mode_ethernet_mac_0_rgmii_RD),
        .rgmii_tx_ctl(tri_mode_ethernet_mac_0_rgmii_TX_CTL),
        .rgmii_txc(tri_mode_ethernet_mac_0_rgmii_TXC),
        .rgmii_txd(tri_mode_ethernet_mac_0_rgmii_TD),
        .rx_axi_rstn(glbl_rstn_0_1),
        .rx_axis_mac_tdata(tri_mode_ethernet_mac_0_m_axis_rx_TDATA),
        .rx_axis_mac_tlast(tri_mode_ethernet_mac_0_m_axis_rx_TLAST),
        .rx_axis_mac_tuser(tri_mode_ethernet_mac_0_m_axis_rx_TUSER),
        .rx_axis_mac_tvalid(tri_mode_ethernet_mac_0_m_axis_rx_TVALID),
        .rx_configuration_vector(xlconstant_0_dout),
        .rx_mac_aclk(S00_AXIS_ACLK_1),
        .rx_reset(tri_mode_ethernet_mac_0_rx_reset),
        .tx_axi_rstn(glbl_rstn_0_1),
        .tx_axis_mac_tdata(axis_interconnect_1_M00_AXIS_TDATA),
        .tx_axis_mac_tlast(axis_interconnect_1_M00_AXIS_TLAST),
        .tx_axis_mac_tready(axis_interconnect_1_M00_AXIS_TREADY),
        .tx_axis_mac_tuser(axis_interconnect_1_M00_AXIS_TUSER),
        .tx_axis_mac_tvalid(axis_interconnect_1_M00_AXIS_TVALID),
        .tx_configuration_vector(xlconstant_1_dout),
        .tx_enable(tri_mode_ethernet_mac_0_tx_enable),
        .tx_ifg_delay({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_mac_aclk(tri_mode_ethernet_mac_0_tx_mac_aclk));
  design_1_tri_mode_ethernet_mac_1_0 tri_mode_ethernet_mac_1
       (.glbl_rstn(glbl_rstn_0_1),
        .gtx_clk(tri_mode_ethernet_mac_0_gtx_clk_out),
        .gtx_clk90(tri_mode_ethernet_mac_0_gtx_clk90_out),
        .pause_req(1'b0),
        .pause_val({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rgmii_rx_ctl(tri_mode_ethernet_mac_1_rgmii_RX_CTL),
        .rgmii_rxc(tri_mode_ethernet_mac_1_rgmii_RXC),
        .rgmii_rxd(tri_mode_ethernet_mac_1_rgmii_RD),
        .rgmii_tx_ctl(tri_mode_ethernet_mac_1_rgmii_TX_CTL),
        .rgmii_txc(tri_mode_ethernet_mac_1_rgmii_TXC),
        .rgmii_txd(tri_mode_ethernet_mac_1_rgmii_TD),
        .rx_axi_rstn(glbl_rstn_0_1),
        .rx_axis_mac_tdata(tri_mode_ethernet_mac_1_m_axis_rx_TDATA),
        .rx_axis_mac_tlast(tri_mode_ethernet_mac_1_m_axis_rx_TLAST),
        .rx_axis_mac_tvalid(tri_mode_ethernet_mac_1_m_axis_rx_TVALID),
        .rx_configuration_vector(xlconstant_0_dout),
        .rx_mac_aclk(tri_mode_ethernet_mac_1_rx_mac_aclk),
        .rx_reset(tri_mode_ethernet_mac_1_rx_reset),
        .tx_axi_rstn(glbl_rstn_0_1),
        .tx_axis_mac_tdata(axis_interconnect_0_M00_AXIS_TDATA),
        .tx_axis_mac_tlast(axis_interconnect_0_M00_AXIS_TLAST),
        .tx_axis_mac_tready(axis_interconnect_0_M00_AXIS_TREADY),
        .tx_axis_mac_tuser(axis_interconnect_0_M00_AXIS_TUSER),
        .tx_axis_mac_tvalid(axis_interconnect_0_M00_AXIS_TVALID),
        .tx_configuration_vector(xlconstant_1_dout),
        .tx_enable(tri_mode_ethernet_mac_1_tx_enable),
        .tx_ifg_delay({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_mac_aclk(M00_AXIS_ACLK_1));
  design_1_tri_mode_ethernet_mac_1_1 tri_mode_ethernet_mac_2
       (.glbl_rstn(glbl_rstn_0_1),
        .gtx_clk(tri_mode_ethernet_mac_0_gtx_clk_out),
        .gtx_clk90(tri_mode_ethernet_mac_0_gtx_clk90_out),
        .pause_req(1'b0),
        .pause_val({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rgmii_rx_ctl(tri_mode_ethernet_mac_2_rgmii_RX_CTL),
        .rgmii_rxc(tri_mode_ethernet_mac_2_rgmii_RXC),
        .rgmii_rxd(tri_mode_ethernet_mac_2_rgmii_RD),
        .rgmii_tx_ctl(tri_mode_ethernet_mac_2_rgmii_TX_CTL),
        .rgmii_txc(tri_mode_ethernet_mac_2_rgmii_TXC),
        .rgmii_txd(tri_mode_ethernet_mac_2_rgmii_TD),
        .rx_axi_rstn(glbl_rstn_0_1),
        .rx_axis_mac_tdata(tri_mode_ethernet_mac_2_m_axis_rx_TDATA),
        .rx_axis_mac_tlast(tri_mode_ethernet_mac_2_m_axis_rx_TLAST),
        .rx_axis_mac_tvalid(tri_mode_ethernet_mac_2_m_axis_rx_TVALID),
        .rx_configuration_vector(xlconstant_0_dout),
        .rx_mac_aclk(tri_mode_ethernet_mac_2_rx_mac_aclk),
        .rx_reset(tri_mode_ethernet_mac_2_rx_reset),
        .tx_axi_rstn(glbl_rstn_0_1),
        .tx_axis_mac_tdata(axis_interconnect_0_M01_AXIS_TDATA),
        .tx_axis_mac_tlast(axis_interconnect_0_M01_AXIS_TLAST),
        .tx_axis_mac_tready(axis_interconnect_0_M01_AXIS_TREADY),
        .tx_axis_mac_tuser(axis_interconnect_0_M01_AXIS_TUSER),
        .tx_axis_mac_tvalid(axis_interconnect_0_M01_AXIS_TVALID),
        .tx_configuration_vector(xlconstant_1_dout),
        .tx_enable(tri_mode_ethernet_mac_2_tx_enable),
        .tx_ifg_delay({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_mac_aclk(M01_AXIS_ACLK_1));
  design_1_tri_mode_ethernet_mac_1_2 tri_mode_ethernet_mac_3
       (.glbl_rstn(glbl_rstn_0_1),
        .gtx_clk(tri_mode_ethernet_mac_0_gtx_clk_out),
        .gtx_clk90(tri_mode_ethernet_mac_0_gtx_clk90_out),
        .pause_req(1'b0),
        .pause_val({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rgmii_rx_ctl(tri_mode_ethernet_mac_3_rgmii_RX_CTL),
        .rgmii_rxc(tri_mode_ethernet_mac_3_rgmii_RXC),
        .rgmii_rxd(tri_mode_ethernet_mac_3_rgmii_RD),
        .rgmii_tx_ctl(tri_mode_ethernet_mac_3_rgmii_TX_CTL),
        .rgmii_txc(tri_mode_ethernet_mac_3_rgmii_TXC),
        .rgmii_txd(tri_mode_ethernet_mac_3_rgmii_TD),
        .rx_axi_rstn(glbl_rstn_0_1),
        .rx_axis_mac_tdata(tri_mode_ethernet_mac_3_m_axis_rx_TDATA),
        .rx_axis_mac_tlast(tri_mode_ethernet_mac_3_m_axis_rx_TLAST),
        .rx_axis_mac_tvalid(tri_mode_ethernet_mac_3_m_axis_rx_TVALID),
        .rx_configuration_vector(xlconstant_0_dout),
        .rx_mac_aclk(tri_mode_ethernet_mac_3_rx_mac_aclk),
        .rx_reset(tri_mode_ethernet_mac_3_rx_reset),
        .tx_axi_rstn(glbl_rstn_0_1),
        .tx_axis_mac_tdata(axis_interconnect_0_M02_AXIS_TDATA),
        .tx_axis_mac_tlast(axis_interconnect_0_M02_AXIS_TLAST),
        .tx_axis_mac_tready(axis_interconnect_0_M02_AXIS_TREADY),
        .tx_axis_mac_tuser(axis_interconnect_0_M02_AXIS_TUSER),
        .tx_axis_mac_tvalid(axis_interconnect_0_M02_AXIS_TVALID),
        .tx_configuration_vector(xlconstant_1_dout),
        .tx_enable(tri_mode_ethernet_mac_3_tx_enable),
        .tx_ifg_delay({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_mac_aclk(M02_AXIS_ACLK_1));
  design_1_tri_mode_ethernet_mac_1_3 tri_mode_ethernet_mac_4
       (.glbl_rstn(glbl_rstn_0_1),
        .gtx_clk(tri_mode_ethernet_mac_0_gtx_clk_out),
        .gtx_clk90(tri_mode_ethernet_mac_0_gtx_clk90_out),
        .pause_req(1'b0),
        .pause_val({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rgmii_rx_ctl(tri_mode_ethernet_mac_4_rgmii_RX_CTL),
        .rgmii_rxc(tri_mode_ethernet_mac_4_rgmii_RXC),
        .rgmii_rxd(tri_mode_ethernet_mac_4_rgmii_RD),
        .rgmii_tx_ctl(tri_mode_ethernet_mac_4_rgmii_TX_CTL),
        .rgmii_txc(tri_mode_ethernet_mac_4_rgmii_TXC),
        .rgmii_txd(tri_mode_ethernet_mac_4_rgmii_TD),
        .rx_axi_rstn(glbl_rstn_0_1),
        .rx_axis_mac_tdata(tri_mode_ethernet_mac_4_m_axis_rx_TDATA),
        .rx_axis_mac_tlast(tri_mode_ethernet_mac_4_m_axis_rx_TLAST),
        .rx_axis_mac_tvalid(tri_mode_ethernet_mac_4_m_axis_rx_TVALID),
        .rx_configuration_vector(xlconstant_0_dout),
        .rx_mac_aclk(tri_mode_ethernet_mac_4_rx_mac_aclk),
        .rx_reset(tri_mode_ethernet_mac_4_rx_reset),
        .tx_axi_rstn(glbl_rstn_0_1),
        .tx_axis_mac_tdata(axis_interconnect_0_M03_AXIS_TDATA),
        .tx_axis_mac_tlast(axis_interconnect_0_M03_AXIS_TLAST),
        .tx_axis_mac_tready(axis_interconnect_0_M03_AXIS_TREADY),
        .tx_axis_mac_tuser(axis_interconnect_0_M03_AXIS_TUSER),
        .tx_axis_mac_tvalid(axis_interconnect_0_M03_AXIS_TVALID),
        .tx_configuration_vector(xlconstant_1_dout),
        .tx_enable(tri_mode_ethernet_mac_4_tx_enable),
        .tx_ifg_delay({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_mac_aclk(M03_AXIS_ACLK_1));
  design_1_util_vector_logic_0_2 util_vector_logic_0
       (.Op1(tri_mode_ethernet_mac_0_rx_reset),
        .Res(util_vector_logic_0_Res));
  design_1_util_vector_logic_0_1 util_vector_logic_1
       (.Op1(tri_mode_ethernet_mac_1_rx_reset),
        .Res(util_vector_logic_1_Res));
  design_1_util_vector_logic_1_0 util_vector_logic_2
       (.Op1(tri_mode_ethernet_mac_2_rx_reset),
        .Res(util_vector_logic_2_Res));
  design_1_util_vector_logic_2_0 util_vector_logic_3
       (.Op1(tri_mode_ethernet_mac_3_rx_reset),
        .Res(util_vector_logic_3_Res));
  design_1_util_vector_logic_2_1 util_vector_logic_4
       (.Op1(tri_mode_ethernet_mac_4_rx_reset),
        .Res(util_vector_logic_4_Res));
  design_1_vlan_inserter_0_0 vlan_inserter_0
       (.arstn(util_vector_logic_1_Res),
        .axis_aclk(tri_mode_ethernet_mac_1_rx_mac_aclk),
        .m_axis_tdata(vlan_inserter_0_m_axis_TDATA),
        .m_axis_tlast(vlan_inserter_0_m_axis_TLAST),
        .m_axis_tvalid(vlan_inserter_0_m_axis_TVALID),
        .s_axis_tdata(tri_mode_ethernet_mac_1_m_axis_rx_TDATA),
        .s_axis_tlast(tri_mode_ethernet_mac_1_m_axis_rx_TLAST),
        .s_axis_tvalid(tri_mode_ethernet_mac_1_m_axis_rx_TVALID));
  design_1_vlan_inserter_0_1 vlan_inserter_1
       (.arstn(util_vector_logic_2_Res),
        .axis_aclk(tri_mode_ethernet_mac_2_rx_mac_aclk),
        .m_axis_tdata(vlan_inserter_1_m_axis_TDATA),
        .m_axis_tlast(vlan_inserter_1_m_axis_TLAST),
        .m_axis_tvalid(vlan_inserter_1_m_axis_TVALID),
        .s_axis_tdata(tri_mode_ethernet_mac_2_m_axis_rx_TDATA),
        .s_axis_tlast(tri_mode_ethernet_mac_2_m_axis_rx_TLAST),
        .s_axis_tvalid(tri_mode_ethernet_mac_2_m_axis_rx_TVALID));
  design_1_vlan_inserter_1_0 vlan_inserter_2
       (.arstn(util_vector_logic_3_Res),
        .axis_aclk(tri_mode_ethernet_mac_3_rx_mac_aclk),
        .m_axis_tdata(vlan_inserter_2_m_axis_TDATA),
        .m_axis_tlast(vlan_inserter_2_m_axis_TLAST),
        .m_axis_tvalid(vlan_inserter_2_m_axis_TVALID),
        .s_axis_tdata(tri_mode_ethernet_mac_3_m_axis_rx_TDATA),
        .s_axis_tlast(tri_mode_ethernet_mac_3_m_axis_rx_TLAST),
        .s_axis_tvalid(tri_mode_ethernet_mac_3_m_axis_rx_TVALID));
  design_1_vlan_inserter_2_0 vlan_inserter_3
       (.arstn(util_vector_logic_4_Res),
        .axis_aclk(tri_mode_ethernet_mac_4_rx_mac_aclk),
        .m_axis_tdata(vlan_inserter_3_m_axis_TDATA),
        .m_axis_tlast(vlan_inserter_3_m_axis_TLAST),
        .m_axis_tvalid(vlan_inserter_3_m_axis_TVALID),
        .s_axis_tdata(tri_mode_ethernet_mac_4_m_axis_rx_TDATA),
        .s_axis_tlast(tri_mode_ethernet_mac_4_m_axis_rx_TLAST),
        .s_axis_tvalid(tri_mode_ethernet_mac_4_m_axis_rx_TVALID));
  design_1_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  design_1_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
endmodule

module design_1_axis_interconnect_0_0
   (ACLK,
    ARESETN,
    M00_AXIS_ACLK,
    M00_AXIS_ARESETN,
    M00_AXIS_tdata,
    M00_AXIS_tlast,
    M00_AXIS_tready,
    M00_AXIS_tuser,
    M00_AXIS_tvalid,
    M01_AXIS_ACLK,
    M01_AXIS_ARESETN,
    M01_AXIS_tdata,
    M01_AXIS_tlast,
    M01_AXIS_tready,
    M01_AXIS_tuser,
    M01_AXIS_tvalid,
    M02_AXIS_ACLK,
    M02_AXIS_ARESETN,
    M02_AXIS_tdata,
    M02_AXIS_tlast,
    M02_AXIS_tready,
    M02_AXIS_tuser,
    M02_AXIS_tvalid,
    M03_AXIS_ACLK,
    M03_AXIS_ARESETN,
    M03_AXIS_tdata,
    M03_AXIS_tlast,
    M03_AXIS_tready,
    M03_AXIS_tuser,
    M03_AXIS_tvalid,
    S00_AXIS_ACLK,
    S00_AXIS_ARESETN,
    S00_AXIS_tdata,
    S00_AXIS_tdest,
    S00_AXIS_tlast,
    S00_AXIS_tuser,
    S00_AXIS_tvalid);
  input ACLK;
  input ARESETN;
  input M00_AXIS_ACLK;
  input M00_AXIS_ARESETN;
  output [7:0]M00_AXIS_tdata;
  output M00_AXIS_tlast;
  input M00_AXIS_tready;
  output [0:0]M00_AXIS_tuser;
  output M00_AXIS_tvalid;
  input M01_AXIS_ACLK;
  input M01_AXIS_ARESETN;
  output [7:0]M01_AXIS_tdata;
  output M01_AXIS_tlast;
  input M01_AXIS_tready;
  output [0:0]M01_AXIS_tuser;
  output M01_AXIS_tvalid;
  input M02_AXIS_ACLK;
  input M02_AXIS_ARESETN;
  output [7:0]M02_AXIS_tdata;
  output M02_AXIS_tlast;
  input M02_AXIS_tready;
  output [0:0]M02_AXIS_tuser;
  output M02_AXIS_tvalid;
  input M03_AXIS_ACLK;
  input M03_AXIS_ARESETN;
  output [7:0]M03_AXIS_tdata;
  output M03_AXIS_tlast;
  input M03_AXIS_tready;
  output [0:0]M03_AXIS_tuser;
  output M03_AXIS_tvalid;
  input S00_AXIS_ACLK;
  input S00_AXIS_ARESETN;
  input [7:0]S00_AXIS_tdata;
  input [7:0]S00_AXIS_tdest;
  input S00_AXIS_tlast;
  input S00_AXIS_tuser;
  input S00_AXIS_tvalid;

  wire M00_AXIS_ACLK_1;
  wire M00_AXIS_ARESETN_1;
  wire M01_AXIS_ACLK_1;
  wire M01_AXIS_ARESETN_1;
  wire M02_AXIS_ACLK_1;
  wire M02_AXIS_ARESETN_1;
  wire M03_AXIS_ACLK_1;
  wire M03_AXIS_ARESETN_1;
  wire S00_AXIS_ACLK_1;
  wire S00_AXIS_ARESETN_1;
  wire axis_interconnect_0_ACLK_net;
  wire axis_interconnect_0_ARESETN_net;
  wire [7:0]axis_interconnect_0_to_s00_couplers_TDATA;
  wire [7:0]axis_interconnect_0_to_s00_couplers_TDEST;
  wire axis_interconnect_0_to_s00_couplers_TLAST;
  wire axis_interconnect_0_to_s00_couplers_TUSER;
  wire axis_interconnect_0_to_s00_couplers_TVALID;
  wire [7:0]m00_couplers_to_axis_interconnect_0_TDATA;
  wire m00_couplers_to_axis_interconnect_0_TLAST;
  wire m00_couplers_to_axis_interconnect_0_TREADY;
  wire [0:0]m00_couplers_to_axis_interconnect_0_TUSER;
  wire m00_couplers_to_axis_interconnect_0_TVALID;
  wire [7:0]m01_couplers_to_axis_interconnect_0_TDATA;
  wire m01_couplers_to_axis_interconnect_0_TLAST;
  wire m01_couplers_to_axis_interconnect_0_TREADY;
  wire [0:0]m01_couplers_to_axis_interconnect_0_TUSER;
  wire m01_couplers_to_axis_interconnect_0_TVALID;
  wire [7:0]m02_couplers_to_axis_interconnect_0_TDATA;
  wire m02_couplers_to_axis_interconnect_0_TLAST;
  wire m02_couplers_to_axis_interconnect_0_TREADY;
  wire [0:0]m02_couplers_to_axis_interconnect_0_TUSER;
  wire m02_couplers_to_axis_interconnect_0_TVALID;
  wire [7:0]m03_couplers_to_axis_interconnect_0_TDATA;
  wire m03_couplers_to_axis_interconnect_0_TLAST;
  wire m03_couplers_to_axis_interconnect_0_TREADY;
  wire [0:0]m03_couplers_to_axis_interconnect_0_TUSER;
  wire m03_couplers_to_axis_interconnect_0_TVALID;
  wire [7:0]s00_couplers_to_xbar_TDATA;
  wire [7:0]s00_couplers_to_xbar_TDEST;
  wire s00_couplers_to_xbar_TLAST;
  wire [0:0]s00_couplers_to_xbar_TREADY;
  wire [0:0]s00_couplers_to_xbar_TUSER;
  wire s00_couplers_to_xbar_TVALID;
  wire [7:0]xbar_to_m00_couplers_TDATA;
  wire [7:0]xbar_to_m00_couplers_TDEST;
  wire [0:0]xbar_to_m00_couplers_TLAST;
  wire xbar_to_m00_couplers_TREADY;
  wire [0:0]xbar_to_m00_couplers_TUSER;
  wire [0:0]xbar_to_m00_couplers_TVALID;
  wire [15:8]xbar_to_m01_couplers_TDATA;
  wire [15:8]xbar_to_m01_couplers_TDEST;
  wire [1:1]xbar_to_m01_couplers_TLAST;
  wire xbar_to_m01_couplers_TREADY;
  wire [1:1]xbar_to_m01_couplers_TUSER;
  wire [1:1]xbar_to_m01_couplers_TVALID;
  wire [23:16]xbar_to_m02_couplers_TDATA;
  wire [23:16]xbar_to_m02_couplers_TDEST;
  wire [2:2]xbar_to_m02_couplers_TLAST;
  wire xbar_to_m02_couplers_TREADY;
  wire [2:2]xbar_to_m02_couplers_TUSER;
  wire [2:2]xbar_to_m02_couplers_TVALID;
  wire [31:24]xbar_to_m03_couplers_TDATA;
  wire [31:24]xbar_to_m03_couplers_TDEST;
  wire [3:3]xbar_to_m03_couplers_TLAST;
  wire xbar_to_m03_couplers_TREADY;
  wire [3:3]xbar_to_m03_couplers_TUSER;
  wire [3:3]xbar_to_m03_couplers_TVALID;

  assign M00_AXIS_ACLK_1 = M00_AXIS_ACLK;
  assign M00_AXIS_ARESETN_1 = M00_AXIS_ARESETN;
  assign M00_AXIS_tdata[7:0] = m00_couplers_to_axis_interconnect_0_TDATA;
  assign M00_AXIS_tlast = m00_couplers_to_axis_interconnect_0_TLAST;
  assign M00_AXIS_tuser[0] = m00_couplers_to_axis_interconnect_0_TUSER;
  assign M00_AXIS_tvalid = m00_couplers_to_axis_interconnect_0_TVALID;
  assign M01_AXIS_ACLK_1 = M01_AXIS_ACLK;
  assign M01_AXIS_ARESETN_1 = M01_AXIS_ARESETN;
  assign M01_AXIS_tdata[7:0] = m01_couplers_to_axis_interconnect_0_TDATA;
  assign M01_AXIS_tlast = m01_couplers_to_axis_interconnect_0_TLAST;
  assign M01_AXIS_tuser[0] = m01_couplers_to_axis_interconnect_0_TUSER;
  assign M01_AXIS_tvalid = m01_couplers_to_axis_interconnect_0_TVALID;
  assign M02_AXIS_ACLK_1 = M02_AXIS_ACLK;
  assign M02_AXIS_ARESETN_1 = M02_AXIS_ARESETN;
  assign M02_AXIS_tdata[7:0] = m02_couplers_to_axis_interconnect_0_TDATA;
  assign M02_AXIS_tlast = m02_couplers_to_axis_interconnect_0_TLAST;
  assign M02_AXIS_tuser[0] = m02_couplers_to_axis_interconnect_0_TUSER;
  assign M02_AXIS_tvalid = m02_couplers_to_axis_interconnect_0_TVALID;
  assign M03_AXIS_ACLK_1 = M03_AXIS_ACLK;
  assign M03_AXIS_ARESETN_1 = M03_AXIS_ARESETN;
  assign M03_AXIS_tdata[7:0] = m03_couplers_to_axis_interconnect_0_TDATA;
  assign M03_AXIS_tlast = m03_couplers_to_axis_interconnect_0_TLAST;
  assign M03_AXIS_tuser[0] = m03_couplers_to_axis_interconnect_0_TUSER;
  assign M03_AXIS_tvalid = m03_couplers_to_axis_interconnect_0_TVALID;
  assign S00_AXIS_ACLK_1 = S00_AXIS_ACLK;
  assign S00_AXIS_ARESETN_1 = S00_AXIS_ARESETN;
  assign axis_interconnect_0_ACLK_net = ACLK;
  assign axis_interconnect_0_ARESETN_net = ARESETN;
  assign axis_interconnect_0_to_s00_couplers_TDATA = S00_AXIS_tdata[7:0];
  assign axis_interconnect_0_to_s00_couplers_TDEST = S00_AXIS_tdest[7:0];
  assign axis_interconnect_0_to_s00_couplers_TLAST = S00_AXIS_tlast;
  assign axis_interconnect_0_to_s00_couplers_TUSER = S00_AXIS_tuser;
  assign axis_interconnect_0_to_s00_couplers_TVALID = S00_AXIS_tvalid;
  assign m00_couplers_to_axis_interconnect_0_TREADY = M00_AXIS_tready;
  assign m01_couplers_to_axis_interconnect_0_TREADY = M01_AXIS_tready;
  assign m02_couplers_to_axis_interconnect_0_TREADY = M02_AXIS_tready;
  assign m03_couplers_to_axis_interconnect_0_TREADY = M03_AXIS_tready;
  m00_couplers_imp_F63VTB m00_couplers
       (.M_AXIS_ACLK(M00_AXIS_ACLK_1),
        .M_AXIS_ARESETN(M00_AXIS_ARESETN_1),
        .M_AXIS_tdata(m00_couplers_to_axis_interconnect_0_TDATA),
        .M_AXIS_tlast(m00_couplers_to_axis_interconnect_0_TLAST),
        .M_AXIS_tready(m00_couplers_to_axis_interconnect_0_TREADY),
        .M_AXIS_tuser(m00_couplers_to_axis_interconnect_0_TUSER),
        .M_AXIS_tvalid(m00_couplers_to_axis_interconnect_0_TVALID),
        .S_AXIS_ACLK(axis_interconnect_0_ACLK_net),
        .S_AXIS_ARESETN(axis_interconnect_0_ARESETN_net),
        .S_AXIS_tdata(xbar_to_m00_couplers_TDATA),
        .S_AXIS_tdest(xbar_to_m00_couplers_TDEST),
        .S_AXIS_tlast(xbar_to_m00_couplers_TLAST),
        .S_AXIS_tready(xbar_to_m00_couplers_TREADY),
        .S_AXIS_tuser(xbar_to_m00_couplers_TUSER),
        .S_AXIS_tvalid(xbar_to_m00_couplers_TVALID));
  m01_couplers_imp_1OHHHDA m01_couplers
       (.M_AXIS_ACLK(M01_AXIS_ACLK_1),
        .M_AXIS_ARESETN(M01_AXIS_ARESETN_1),
        .M_AXIS_tdata(m01_couplers_to_axis_interconnect_0_TDATA),
        .M_AXIS_tlast(m01_couplers_to_axis_interconnect_0_TLAST),
        .M_AXIS_tready(m01_couplers_to_axis_interconnect_0_TREADY),
        .M_AXIS_tuser(m01_couplers_to_axis_interconnect_0_TUSER),
        .M_AXIS_tvalid(m01_couplers_to_axis_interconnect_0_TVALID),
        .S_AXIS_ACLK(axis_interconnect_0_ACLK_net),
        .S_AXIS_ARESETN(axis_interconnect_0_ARESETN_net),
        .S_AXIS_tdata(xbar_to_m01_couplers_TDATA),
        .S_AXIS_tdest(xbar_to_m01_couplers_TDEST),
        .S_AXIS_tlast(xbar_to_m01_couplers_TLAST),
        .S_AXIS_tready(xbar_to_m01_couplers_TREADY),
        .S_AXIS_tuser(xbar_to_m01_couplers_TUSER),
        .S_AXIS_tvalid(xbar_to_m01_couplers_TVALID));
  m02_couplers_imp_EA4A4S m02_couplers
       (.M_AXIS_ACLK(M02_AXIS_ACLK_1),
        .M_AXIS_ARESETN(M02_AXIS_ARESETN_1),
        .M_AXIS_tdata(m02_couplers_to_axis_interconnect_0_TDATA),
        .M_AXIS_tlast(m02_couplers_to_axis_interconnect_0_TLAST),
        .M_AXIS_tready(m02_couplers_to_axis_interconnect_0_TREADY),
        .M_AXIS_tuser(m02_couplers_to_axis_interconnect_0_TUSER),
        .M_AXIS_tvalid(m02_couplers_to_axis_interconnect_0_TVALID),
        .S_AXIS_ACLK(axis_interconnect_0_ACLK_net),
        .S_AXIS_ARESETN(axis_interconnect_0_ARESETN_net),
        .S_AXIS_tdata(xbar_to_m02_couplers_TDATA),
        .S_AXIS_tdest(xbar_to_m02_couplers_TDEST),
        .S_AXIS_tlast(xbar_to_m02_couplers_TLAST),
        .S_AXIS_tready(xbar_to_m02_couplers_TREADY),
        .S_AXIS_tuser(xbar_to_m02_couplers_TUSER),
        .S_AXIS_tvalid(xbar_to_m02_couplers_TVALID));
  m03_couplers_imp_1P37165 m03_couplers
       (.M_AXIS_ACLK(M03_AXIS_ACLK_1),
        .M_AXIS_ARESETN(M03_AXIS_ARESETN_1),
        .M_AXIS_tdata(m03_couplers_to_axis_interconnect_0_TDATA),
        .M_AXIS_tlast(m03_couplers_to_axis_interconnect_0_TLAST),
        .M_AXIS_tready(m03_couplers_to_axis_interconnect_0_TREADY),
        .M_AXIS_tuser(m03_couplers_to_axis_interconnect_0_TUSER),
        .M_AXIS_tvalid(m03_couplers_to_axis_interconnect_0_TVALID),
        .S_AXIS_ACLK(axis_interconnect_0_ACLK_net),
        .S_AXIS_ARESETN(axis_interconnect_0_ARESETN_net),
        .S_AXIS_tdata(xbar_to_m03_couplers_TDATA),
        .S_AXIS_tdest(xbar_to_m03_couplers_TDEST),
        .S_AXIS_tlast(xbar_to_m03_couplers_TLAST),
        .S_AXIS_tready(xbar_to_m03_couplers_TREADY),
        .S_AXIS_tuser(xbar_to_m03_couplers_TUSER),
        .S_AXIS_tvalid(xbar_to_m03_couplers_TVALID));
  s00_couplers_imp_1LLE45P s00_couplers
       (.M_AXIS_ACLK(axis_interconnect_0_ACLK_net),
        .M_AXIS_ARESETN(axis_interconnect_0_ARESETN_net),
        .M_AXIS_tdata(s00_couplers_to_xbar_TDATA),
        .M_AXIS_tdest(s00_couplers_to_xbar_TDEST),
        .M_AXIS_tlast(s00_couplers_to_xbar_TLAST),
        .M_AXIS_tready(s00_couplers_to_xbar_TREADY),
        .M_AXIS_tuser(s00_couplers_to_xbar_TUSER),
        .M_AXIS_tvalid(s00_couplers_to_xbar_TVALID),
        .S_AXIS_ACLK(S00_AXIS_ACLK_1),
        .S_AXIS_ARESETN(S00_AXIS_ARESETN_1),
        .S_AXIS_tdata(axis_interconnect_0_to_s00_couplers_TDATA),
        .S_AXIS_tdest(axis_interconnect_0_to_s00_couplers_TDEST),
        .S_AXIS_tlast(axis_interconnect_0_to_s00_couplers_TLAST),
        .S_AXIS_tuser(axis_interconnect_0_to_s00_couplers_TUSER),
        .S_AXIS_tvalid(axis_interconnect_0_to_s00_couplers_TVALID));
  design_1_xbar_0 xbar
       (.aclk(axis_interconnect_0_ACLK_net),
        .aresetn(axis_interconnect_0_ARESETN_net),
        .m_axis_tdata({xbar_to_m03_couplers_TDATA,xbar_to_m02_couplers_TDATA,xbar_to_m01_couplers_TDATA,xbar_to_m00_couplers_TDATA}),
        .m_axis_tdest({xbar_to_m03_couplers_TDEST,xbar_to_m02_couplers_TDEST,xbar_to_m01_couplers_TDEST,xbar_to_m00_couplers_TDEST}),
        .m_axis_tlast({xbar_to_m03_couplers_TLAST,xbar_to_m02_couplers_TLAST,xbar_to_m01_couplers_TLAST,xbar_to_m00_couplers_TLAST}),
        .m_axis_tready({xbar_to_m03_couplers_TREADY,xbar_to_m02_couplers_TREADY,xbar_to_m01_couplers_TREADY,xbar_to_m00_couplers_TREADY}),
        .m_axis_tuser({xbar_to_m03_couplers_TUSER,xbar_to_m02_couplers_TUSER,xbar_to_m01_couplers_TUSER,xbar_to_m00_couplers_TUSER}),
        .m_axis_tvalid({xbar_to_m03_couplers_TVALID,xbar_to_m02_couplers_TVALID,xbar_to_m01_couplers_TVALID,xbar_to_m00_couplers_TVALID}),
        .s_axis_tdata(s00_couplers_to_xbar_TDATA),
        .s_axis_tdest(s00_couplers_to_xbar_TDEST),
        .s_axis_tlast(s00_couplers_to_xbar_TLAST),
        .s_axis_tready(s00_couplers_to_xbar_TREADY),
        .s_axis_tuser(s00_couplers_to_xbar_TUSER),
        .s_axis_tvalid(s00_couplers_to_xbar_TVALID));
endmodule

module design_1_axis_interconnect_1_0
   (ACLK,
    ARESETN,
    M00_AXIS_ACLK,
    M00_AXIS_ARESETN,
    M00_AXIS_tdata,
    M00_AXIS_tlast,
    M00_AXIS_tready,
    M00_AXIS_tuser,
    M00_AXIS_tvalid,
    S00_ARB_REQ_SUPPRESS,
    S00_AXIS_ACLK,
    S00_AXIS_ARESETN,
    S00_AXIS_tdata,
    S00_AXIS_tlast,
    S00_AXIS_tvalid,
    S01_ARB_REQ_SUPPRESS,
    S01_AXIS_ACLK,
    S01_AXIS_ARESETN,
    S01_AXIS_tdata,
    S01_AXIS_tlast,
    S01_AXIS_tvalid,
    S02_ARB_REQ_SUPPRESS,
    S02_AXIS_ACLK,
    S02_AXIS_ARESETN,
    S02_AXIS_tdata,
    S02_AXIS_tlast,
    S02_AXIS_tvalid,
    S03_ARB_REQ_SUPPRESS,
    S03_AXIS_ACLK,
    S03_AXIS_ARESETN,
    S03_AXIS_tdata,
    S03_AXIS_tlast,
    S03_AXIS_tvalid);
  input ACLK;
  input ARESETN;
  input M00_AXIS_ACLK;
  input M00_AXIS_ARESETN;
  output [7:0]M00_AXIS_tdata;
  output M00_AXIS_tlast;
  input M00_AXIS_tready;
  output [0:0]M00_AXIS_tuser;
  output M00_AXIS_tvalid;
  input S00_ARB_REQ_SUPPRESS;
  input S00_AXIS_ACLK;
  input S00_AXIS_ARESETN;
  input [7:0]S00_AXIS_tdata;
  input S00_AXIS_tlast;
  input S00_AXIS_tvalid;
  input S01_ARB_REQ_SUPPRESS;
  input S01_AXIS_ACLK;
  input S01_AXIS_ARESETN;
  input [7:0]S01_AXIS_tdata;
  input S01_AXIS_tlast;
  input S01_AXIS_tvalid;
  input S02_ARB_REQ_SUPPRESS;
  input S02_AXIS_ACLK;
  input S02_AXIS_ARESETN;
  input [7:0]S02_AXIS_tdata;
  input S02_AXIS_tlast;
  input S02_AXIS_tvalid;
  input S03_ARB_REQ_SUPPRESS;
  input S03_AXIS_ACLK;
  input S03_AXIS_ARESETN;
  input [7:0]S03_AXIS_tdata;
  input S03_AXIS_tlast;
  input S03_AXIS_tvalid;

  wire M00_AXIS_ACLK_1;
  wire M00_AXIS_ARESETN_1;
  wire S00_AXIS_ACLK_1;
  wire S00_AXIS_ARESETN_1;
  wire S01_AXIS_ACLK_1;
  wire S01_AXIS_ARESETN_1;
  wire S02_AXIS_ACLK_1;
  wire S02_AXIS_ARESETN_1;
  wire S03_AXIS_ACLK_1;
  wire S03_AXIS_ARESETN_1;
  wire axis_interconnect_1_ACLK_net;
  wire axis_interconnect_1_ARESETN_net;
  wire [7:0]axis_interconnect_1_to_s00_couplers_TDATA;
  wire axis_interconnect_1_to_s00_couplers_TLAST;
  wire axis_interconnect_1_to_s00_couplers_TVALID;
  wire [7:0]axis_interconnect_1_to_s01_couplers_TDATA;
  wire axis_interconnect_1_to_s01_couplers_TLAST;
  wire axis_interconnect_1_to_s01_couplers_TVALID;
  wire [7:0]axis_interconnect_1_to_s02_couplers_TDATA;
  wire axis_interconnect_1_to_s02_couplers_TLAST;
  wire axis_interconnect_1_to_s02_couplers_TVALID;
  wire [7:0]axis_interconnect_1_to_s03_couplers_TDATA;
  wire axis_interconnect_1_to_s03_couplers_TLAST;
  wire axis_interconnect_1_to_s03_couplers_TVALID;
  wire [7:0]m00_couplers_to_axis_interconnect_1_TDATA;
  wire m00_couplers_to_axis_interconnect_1_TLAST;
  wire m00_couplers_to_axis_interconnect_1_TREADY;
  wire [0:0]m00_couplers_to_axis_interconnect_1_TUSER;
  wire m00_couplers_to_axis_interconnect_1_TVALID;
  wire s00_arb_req_suppress_to_s_arb_req_suppress_concat;
  wire [7:0]s00_couplers_to_xbar_TDATA;
  wire s00_couplers_to_xbar_TLAST;
  wire [0:0]s00_couplers_to_xbar_TREADY;
  wire s00_couplers_to_xbar_TVALID;
  wire s01_arb_req_suppress_to_s_arb_req_suppress_concat;
  wire [7:0]s01_couplers_to_xbar_TDATA;
  wire s01_couplers_to_xbar_TLAST;
  wire [1:1]s01_couplers_to_xbar_TREADY;
  wire s01_couplers_to_xbar_TVALID;
  wire s02_arb_req_suppress_to_s_arb_req_suppress_concat;
  wire [7:0]s02_couplers_to_xbar_TDATA;
  wire s02_couplers_to_xbar_TLAST;
  wire [2:2]s02_couplers_to_xbar_TREADY;
  wire s02_couplers_to_xbar_TVALID;
  wire s03_arb_req_suppress_to_s_arb_req_suppress_concat;
  wire [7:0]s03_couplers_to_xbar_TDATA;
  wire s03_couplers_to_xbar_TLAST;
  wire [3:3]s03_couplers_to_xbar_TREADY;
  wire s03_couplers_to_xbar_TVALID;
  wire [3:0]s_arb_req_suppress_concat_dout;
  wire [7:0]xbar_to_m00_couplers_TDATA;
  wire [0:0]xbar_to_m00_couplers_TLAST;
  wire xbar_to_m00_couplers_TREADY;
  wire [0:0]xbar_to_m00_couplers_TVALID;

  assign M00_AXIS_ACLK_1 = M00_AXIS_ACLK;
  assign M00_AXIS_ARESETN_1 = M00_AXIS_ARESETN;
  assign M00_AXIS_tdata[7:0] = m00_couplers_to_axis_interconnect_1_TDATA;
  assign M00_AXIS_tlast = m00_couplers_to_axis_interconnect_1_TLAST;
  assign M00_AXIS_tuser[0] = m00_couplers_to_axis_interconnect_1_TUSER;
  assign M00_AXIS_tvalid = m00_couplers_to_axis_interconnect_1_TVALID;
  assign S00_AXIS_ACLK_1 = S00_AXIS_ACLK;
  assign S00_AXIS_ARESETN_1 = S00_AXIS_ARESETN;
  assign S01_AXIS_ACLK_1 = S01_AXIS_ACLK;
  assign S01_AXIS_ARESETN_1 = S01_AXIS_ARESETN;
  assign S02_AXIS_ACLK_1 = S02_AXIS_ACLK;
  assign S02_AXIS_ARESETN_1 = S02_AXIS_ARESETN;
  assign S03_AXIS_ACLK_1 = S03_AXIS_ACLK;
  assign S03_AXIS_ARESETN_1 = S03_AXIS_ARESETN;
  assign axis_interconnect_1_ACLK_net = ACLK;
  assign axis_interconnect_1_ARESETN_net = ARESETN;
  assign axis_interconnect_1_to_s00_couplers_TDATA = S00_AXIS_tdata[7:0];
  assign axis_interconnect_1_to_s00_couplers_TLAST = S00_AXIS_tlast;
  assign axis_interconnect_1_to_s00_couplers_TVALID = S00_AXIS_tvalid;
  assign axis_interconnect_1_to_s01_couplers_TDATA = S01_AXIS_tdata[7:0];
  assign axis_interconnect_1_to_s01_couplers_TLAST = S01_AXIS_tlast;
  assign axis_interconnect_1_to_s01_couplers_TVALID = S01_AXIS_tvalid;
  assign axis_interconnect_1_to_s02_couplers_TDATA = S02_AXIS_tdata[7:0];
  assign axis_interconnect_1_to_s02_couplers_TLAST = S02_AXIS_tlast;
  assign axis_interconnect_1_to_s02_couplers_TVALID = S02_AXIS_tvalid;
  assign axis_interconnect_1_to_s03_couplers_TDATA = S03_AXIS_tdata[7:0];
  assign axis_interconnect_1_to_s03_couplers_TLAST = S03_AXIS_tlast;
  assign axis_interconnect_1_to_s03_couplers_TVALID = S03_AXIS_tvalid;
  assign m00_couplers_to_axis_interconnect_1_TREADY = M00_AXIS_tready;
  assign s00_arb_req_suppress_to_s_arb_req_suppress_concat = S00_ARB_REQ_SUPPRESS;
  assign s01_arb_req_suppress_to_s_arb_req_suppress_concat = S01_ARB_REQ_SUPPRESS;
  assign s02_arb_req_suppress_to_s_arb_req_suppress_concat = S02_ARB_REQ_SUPPRESS;
  assign s03_arb_req_suppress_to_s_arb_req_suppress_concat = S03_ARB_REQ_SUPPRESS;
  m00_couplers_imp_9ASDFZ m00_couplers
       (.M_AXIS_ACLK(M00_AXIS_ACLK_1),
        .M_AXIS_ARESETN(M00_AXIS_ARESETN_1),
        .M_AXIS_tdata(m00_couplers_to_axis_interconnect_1_TDATA),
        .M_AXIS_tlast(m00_couplers_to_axis_interconnect_1_TLAST),
        .M_AXIS_tready(m00_couplers_to_axis_interconnect_1_TREADY),
        .M_AXIS_tuser(m00_couplers_to_axis_interconnect_1_TUSER),
        .M_AXIS_tvalid(m00_couplers_to_axis_interconnect_1_TVALID),
        .S_AXIS_ACLK(axis_interconnect_1_ACLK_net),
        .S_AXIS_ARESETN(axis_interconnect_1_ARESETN_net),
        .S_AXIS_tdata(xbar_to_m00_couplers_TDATA),
        .S_AXIS_tlast(xbar_to_m00_couplers_TLAST),
        .S_AXIS_tready(xbar_to_m00_couplers_TREADY),
        .S_AXIS_tvalid(xbar_to_m00_couplers_TVALID));
  s00_couplers_imp_1O4UG5P s00_couplers
       (.M_AXIS_ACLK(axis_interconnect_1_ACLK_net),
        .M_AXIS_ARESETN(axis_interconnect_1_ARESETN_net),
        .M_AXIS_tdata(s00_couplers_to_xbar_TDATA),
        .M_AXIS_tlast(s00_couplers_to_xbar_TLAST),
        .M_AXIS_tready(s00_couplers_to_xbar_TREADY),
        .M_AXIS_tvalid(s00_couplers_to_xbar_TVALID),
        .S_AXIS_ACLK(S00_AXIS_ACLK_1),
        .S_AXIS_ARESETN(S00_AXIS_ARESETN_1),
        .S_AXIS_tdata(axis_interconnect_1_to_s00_couplers_TDATA),
        .S_AXIS_tlast(axis_interconnect_1_to_s00_couplers_TLAST),
        .S_AXIS_tvalid(axis_interconnect_1_to_s00_couplers_TVALID));
  s01_couplers_imp_FIFOH8 s01_couplers
       (.M_AXIS_ACLK(axis_interconnect_1_ACLK_net),
        .M_AXIS_ARESETN(axis_interconnect_1_ARESETN_net),
        .M_AXIS_tdata(s01_couplers_to_xbar_TDATA),
        .M_AXIS_tlast(s01_couplers_to_xbar_TLAST),
        .M_AXIS_tready(s01_couplers_to_xbar_TREADY),
        .M_AXIS_tvalid(s01_couplers_to_xbar_TVALID),
        .S_AXIS_ACLK(S01_AXIS_ACLK_1),
        .S_AXIS_ARESETN(S01_AXIS_ARESETN_1),
        .S_AXIS_tdata(axis_interconnect_1_to_s01_couplers_TDATA),
        .S_AXIS_tlast(axis_interconnect_1_to_s01_couplers_TLAST),
        .S_AXIS_tvalid(axis_interconnect_1_to_s01_couplers_TVALID));
  s02_couplers_imp_1PFTW3Y s02_couplers
       (.M_AXIS_ACLK(axis_interconnect_1_ACLK_net),
        .M_AXIS_ARESETN(axis_interconnect_1_ARESETN_net),
        .M_AXIS_tdata(s02_couplers_to_xbar_TDATA),
        .M_AXIS_tlast(s02_couplers_to_xbar_TLAST),
        .M_AXIS_tready(s02_couplers_to_xbar_TREADY),
        .M_AXIS_tvalid(s02_couplers_to_xbar_TVALID),
        .S_AXIS_ACLK(S02_AXIS_ACLK_1),
        .S_AXIS_ARESETN(S02_AXIS_ARESETN_1),
        .S_AXIS_tdata(axis_interconnect_1_to_s02_couplers_TDATA),
        .S_AXIS_tlast(axis_interconnect_1_to_s02_couplers_TLAST),
        .S_AXIS_tvalid(axis_interconnect_1_to_s02_couplers_TVALID));
  s03_couplers_imp_DXSNQN s03_couplers
       (.M_AXIS_ACLK(axis_interconnect_1_ACLK_net),
        .M_AXIS_ARESETN(axis_interconnect_1_ARESETN_net),
        .M_AXIS_tdata(s03_couplers_to_xbar_TDATA),
        .M_AXIS_tlast(s03_couplers_to_xbar_TLAST),
        .M_AXIS_tready(s03_couplers_to_xbar_TREADY),
        .M_AXIS_tvalid(s03_couplers_to_xbar_TVALID),
        .S_AXIS_ACLK(S03_AXIS_ACLK_1),
        .S_AXIS_ARESETN(S03_AXIS_ARESETN_1),
        .S_AXIS_tdata(axis_interconnect_1_to_s03_couplers_TDATA),
        .S_AXIS_tlast(axis_interconnect_1_to_s03_couplers_TLAST),
        .S_AXIS_tvalid(axis_interconnect_1_to_s03_couplers_TVALID));
  design_1_s_arb_req_suppress_concat_0 s_arb_req_suppress_concat
       (.In0(s00_arb_req_suppress_to_s_arb_req_suppress_concat),
        .In1(s01_arb_req_suppress_to_s_arb_req_suppress_concat),
        .In2(s02_arb_req_suppress_to_s_arb_req_suppress_concat),
        .In3(s03_arb_req_suppress_to_s_arb_req_suppress_concat),
        .dout(s_arb_req_suppress_concat_dout));
  design_1_xbar_1 xbar
       (.aclk(axis_interconnect_1_ACLK_net),
        .aresetn(axis_interconnect_1_ARESETN_net),
        .m_axis_tdata(xbar_to_m00_couplers_TDATA),
        .m_axis_tlast(xbar_to_m00_couplers_TLAST),
        .m_axis_tready(xbar_to_m00_couplers_TREADY),
        .m_axis_tvalid(xbar_to_m00_couplers_TVALID),
        .s_axis_tdata({s03_couplers_to_xbar_TDATA,s02_couplers_to_xbar_TDATA,s01_couplers_to_xbar_TDATA,s00_couplers_to_xbar_TDATA}),
        .s_axis_tlast({s03_couplers_to_xbar_TLAST,s02_couplers_to_xbar_TLAST,s01_couplers_to_xbar_TLAST,s00_couplers_to_xbar_TLAST}),
        .s_axis_tready({s03_couplers_to_xbar_TREADY,s02_couplers_to_xbar_TREADY,s01_couplers_to_xbar_TREADY,s00_couplers_to_xbar_TREADY}),
        .s_axis_tvalid({s03_couplers_to_xbar_TVALID,s02_couplers_to_xbar_TVALID,s01_couplers_to_xbar_TVALID,s00_couplers_to_xbar_TVALID}),
        .s_req_suppress(s_arb_req_suppress_concat_dout));
endmodule

module m00_couplers_imp_9ASDFZ
   (M_AXIS_ACLK,
    M_AXIS_ARESETN,
    M_AXIS_tdata,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tuser,
    M_AXIS_tvalid,
    S_AXIS_ACLK,
    S_AXIS_ARESETN,
    S_AXIS_tdata,
    S_AXIS_tlast,
    S_AXIS_tready,
    S_AXIS_tvalid);
  input M_AXIS_ACLK;
  input M_AXIS_ARESETN;
  output [7:0]M_AXIS_tdata;
  output M_AXIS_tlast;
  input M_AXIS_tready;
  output [0:0]M_AXIS_tuser;
  output M_AXIS_tvalid;
  input S_AXIS_ACLK;
  input S_AXIS_ARESETN;
  input [7:0]S_AXIS_tdata;
  input S_AXIS_tlast;
  output S_AXIS_tready;
  input S_AXIS_tvalid;

  wire [31:0]AXIS_DATA_COUNT_to_S_AXIS_DATA_COUNT;
  wire [31:0]AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT;
  wire [31:0]AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT;
  wire M_AXIS_ACLK;
  wire M_AXIS_ARESETN;
  wire S_AXIS_ACLK;
  wire S_AXIS_ARESETN;
  wire [7:0]auto_cc_to_auto_ss_u_TDATA;
  wire auto_cc_to_auto_ss_u_TLAST;
  wire auto_cc_to_auto_ss_u_TREADY;
  wire auto_cc_to_auto_ss_u_TVALID;
  wire [7:0]auto_ss_u_to_m00_regslice_TDATA;
  wire auto_ss_u_to_m00_regslice_TLAST;
  wire auto_ss_u_to_m00_regslice_TREADY;
  wire [0:0]auto_ss_u_to_m00_regslice_TUSER;
  wire auto_ss_u_to_m00_regslice_TVALID;
  wire [7:0]m00_couplers_to_m00_data_fifo_TDATA;
  wire m00_couplers_to_m00_data_fifo_TLAST;
  wire m00_couplers_to_m00_data_fifo_TREADY;
  wire m00_couplers_to_m00_data_fifo_TVALID;
  wire [7:0]m00_data_fifo_to_auto_cc_TDATA;
  wire m00_data_fifo_to_auto_cc_TLAST;
  wire m00_data_fifo_to_auto_cc_TREADY;
  wire m00_data_fifo_to_auto_cc_TVALID;
  wire [7:0]m00_regslice_to_m00_couplers_TDATA;
  wire m00_regslice_to_m00_couplers_TLAST;
  wire m00_regslice_to_m00_couplers_TREADY;
  wire [0:0]m00_regslice_to_m00_couplers_TUSER;
  wire m00_regslice_to_m00_couplers_TVALID;

  assign M_AXIS_tdata[7:0] = m00_regslice_to_m00_couplers_TDATA;
  assign M_AXIS_tlast = m00_regslice_to_m00_couplers_TLAST;
  assign M_AXIS_tuser[0] = m00_regslice_to_m00_couplers_TUSER;
  assign M_AXIS_tvalid = m00_regslice_to_m00_couplers_TVALID;
  assign S_AXIS_tready = m00_couplers_to_m00_data_fifo_TREADY;
  assign m00_couplers_to_m00_data_fifo_TDATA = S_AXIS_tdata[7:0];
  assign m00_couplers_to_m00_data_fifo_TLAST = S_AXIS_tlast;
  assign m00_couplers_to_m00_data_fifo_TVALID = S_AXIS_tvalid;
  assign m00_regslice_to_m00_couplers_TREADY = M_AXIS_tready;
  design_1_auto_cc_5 auto_cc
       (.m_axis_aclk(M_AXIS_ACLK),
        .m_axis_aresetn(M_AXIS_ARESETN),
        .m_axis_tdata(auto_cc_to_auto_ss_u_TDATA),
        .m_axis_tlast(auto_cc_to_auto_ss_u_TLAST),
        .m_axis_tready(auto_cc_to_auto_ss_u_TREADY),
        .m_axis_tvalid(auto_cc_to_auto_ss_u_TVALID),
        .s_axis_aclk(S_AXIS_ACLK),
        .s_axis_aresetn(S_AXIS_ARESETN),
        .s_axis_tdata(m00_data_fifo_to_auto_cc_TDATA),
        .s_axis_tlast(m00_data_fifo_to_auto_cc_TLAST),
        .s_axis_tready(m00_data_fifo_to_auto_cc_TREADY),
        .s_axis_tvalid(m00_data_fifo_to_auto_cc_TVALID));
  design_1_auto_ss_u_0 auto_ss_u
       (.aclk(M_AXIS_ACLK),
        .aresetn(M_AXIS_ARESETN),
        .m_axis_tdata(auto_ss_u_to_m00_regslice_TDATA),
        .m_axis_tlast(auto_ss_u_to_m00_regslice_TLAST),
        .m_axis_tready(auto_ss_u_to_m00_regslice_TREADY),
        .m_axis_tuser(auto_ss_u_to_m00_regslice_TUSER),
        .m_axis_tvalid(auto_ss_u_to_m00_regslice_TVALID),
        .s_axis_tdata(auto_cc_to_auto_ss_u_TDATA),
        .s_axis_tlast(auto_cc_to_auto_ss_u_TLAST),
        .s_axis_tready(auto_cc_to_auto_ss_u_TREADY),
        .s_axis_tvalid(auto_cc_to_auto_ss_u_TVALID));
  design_1_m00_data_fifo_1 m00_data_fifo
       (.axis_data_count(AXIS_DATA_COUNT_to_S_AXIS_DATA_COUNT),
        .axis_rd_data_count(AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT),
        .axis_wr_data_count(AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT),
        .m_axis_tdata(m00_data_fifo_to_auto_cc_TDATA),
        .m_axis_tlast(m00_data_fifo_to_auto_cc_TLAST),
        .m_axis_tready(m00_data_fifo_to_auto_cc_TREADY),
        .m_axis_tvalid(m00_data_fifo_to_auto_cc_TVALID),
        .s_axis_aclk(S_AXIS_ACLK),
        .s_axis_aresetn(S_AXIS_ARESETN),
        .s_axis_tdata(m00_couplers_to_m00_data_fifo_TDATA),
        .s_axis_tlast(m00_couplers_to_m00_data_fifo_TLAST),
        .s_axis_tready(m00_couplers_to_m00_data_fifo_TREADY),
        .s_axis_tvalid(m00_couplers_to_m00_data_fifo_TVALID));
  design_1_m00_regslice_1 m00_regslice
       (.aclk(M_AXIS_ACLK),
        .aresetn(M_AXIS_ARESETN),
        .m_axis_tdata(m00_regslice_to_m00_couplers_TDATA),
        .m_axis_tlast(m00_regslice_to_m00_couplers_TLAST),
        .m_axis_tready(m00_regslice_to_m00_couplers_TREADY),
        .m_axis_tuser(m00_regslice_to_m00_couplers_TUSER),
        .m_axis_tvalid(m00_regslice_to_m00_couplers_TVALID),
        .s_axis_tdata(auto_ss_u_to_m00_regslice_TDATA),
        .s_axis_tlast(auto_ss_u_to_m00_regslice_TLAST),
        .s_axis_tready(auto_ss_u_to_m00_regslice_TREADY),
        .s_axis_tuser(auto_ss_u_to_m00_regslice_TUSER),
        .s_axis_tvalid(auto_ss_u_to_m00_regslice_TVALID));
endmodule

module m00_couplers_imp_F63VTB
   (M_AXIS_ACLK,
    M_AXIS_ARESETN,
    M_AXIS_tdata,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tuser,
    M_AXIS_tvalid,
    S_AXIS_ACLK,
    S_AXIS_ARESETN,
    S_AXIS_tdata,
    S_AXIS_tdest,
    S_AXIS_tlast,
    S_AXIS_tready,
    S_AXIS_tuser,
    S_AXIS_tvalid);
  input M_AXIS_ACLK;
  input M_AXIS_ARESETN;
  output [7:0]M_AXIS_tdata;
  output M_AXIS_tlast;
  input M_AXIS_tready;
  output [0:0]M_AXIS_tuser;
  output M_AXIS_tvalid;
  input S_AXIS_ACLK;
  input S_AXIS_ARESETN;
  input [7:0]S_AXIS_tdata;
  input [7:0]S_AXIS_tdest;
  input S_AXIS_tlast;
  output S_AXIS_tready;
  input [0:0]S_AXIS_tuser;
  input S_AXIS_tvalid;

  wire [31:0]AXIS_DATA_COUNT_to_S_AXIS_DATA_COUNT;
  wire [31:0]AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT;
  wire [31:0]AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT;
  wire M_AXIS_ACLK;
  wire M_AXIS_ARESETN;
  wire S_AXIS_ACLK;
  wire S_AXIS_ARESETN;
  wire [7:0]auto_cc_to_auto_ss_slidr_TDATA;
  wire [7:0]auto_cc_to_auto_ss_slidr_TDEST;
  wire auto_cc_to_auto_ss_slidr_TLAST;
  wire auto_cc_to_auto_ss_slidr_TREADY;
  wire [0:0]auto_cc_to_auto_ss_slidr_TUSER;
  wire auto_cc_to_auto_ss_slidr_TVALID;
  wire [7:0]auto_ss_slidr_to_m00_regslice_TDATA;
  wire auto_ss_slidr_to_m00_regslice_TLAST;
  wire auto_ss_slidr_to_m00_regslice_TREADY;
  wire [0:0]auto_ss_slidr_to_m00_regslice_TUSER;
  wire auto_ss_slidr_to_m00_regslice_TVALID;
  wire [7:0]m00_couplers_to_m00_data_fifo_TDATA;
  wire [7:0]m00_couplers_to_m00_data_fifo_TDEST;
  wire m00_couplers_to_m00_data_fifo_TLAST;
  wire m00_couplers_to_m00_data_fifo_TREADY;
  wire [0:0]m00_couplers_to_m00_data_fifo_TUSER;
  wire m00_couplers_to_m00_data_fifo_TVALID;
  wire [7:0]m00_data_fifo_to_auto_cc_TDATA;
  wire [7:0]m00_data_fifo_to_auto_cc_TDEST;
  wire m00_data_fifo_to_auto_cc_TLAST;
  wire m00_data_fifo_to_auto_cc_TREADY;
  wire [0:0]m00_data_fifo_to_auto_cc_TUSER;
  wire m00_data_fifo_to_auto_cc_TVALID;
  wire [7:0]m00_regslice_to_m00_couplers_TDATA;
  wire m00_regslice_to_m00_couplers_TLAST;
  wire m00_regslice_to_m00_couplers_TREADY;
  wire [0:0]m00_regslice_to_m00_couplers_TUSER;
  wire m00_regslice_to_m00_couplers_TVALID;

  assign M_AXIS_tdata[7:0] = m00_regslice_to_m00_couplers_TDATA;
  assign M_AXIS_tlast = m00_regslice_to_m00_couplers_TLAST;
  assign M_AXIS_tuser[0] = m00_regslice_to_m00_couplers_TUSER;
  assign M_AXIS_tvalid = m00_regslice_to_m00_couplers_TVALID;
  assign S_AXIS_tready = m00_couplers_to_m00_data_fifo_TREADY;
  assign m00_couplers_to_m00_data_fifo_TDATA = S_AXIS_tdata[7:0];
  assign m00_couplers_to_m00_data_fifo_TDEST = S_AXIS_tdest[7:0];
  assign m00_couplers_to_m00_data_fifo_TLAST = S_AXIS_tlast;
  assign m00_couplers_to_m00_data_fifo_TUSER = S_AXIS_tuser[0];
  assign m00_couplers_to_m00_data_fifo_TVALID = S_AXIS_tvalid;
  assign m00_regslice_to_m00_couplers_TREADY = M_AXIS_tready;
  design_1_auto_cc_0 auto_cc
       (.m_axis_aclk(M_AXIS_ACLK),
        .m_axis_aresetn(M_AXIS_ARESETN),
        .m_axis_tdata(auto_cc_to_auto_ss_slidr_TDATA),
        .m_axis_tdest(auto_cc_to_auto_ss_slidr_TDEST),
        .m_axis_tlast(auto_cc_to_auto_ss_slidr_TLAST),
        .m_axis_tready(auto_cc_to_auto_ss_slidr_TREADY),
        .m_axis_tuser(auto_cc_to_auto_ss_slidr_TUSER),
        .m_axis_tvalid(auto_cc_to_auto_ss_slidr_TVALID),
        .s_axis_aclk(S_AXIS_ACLK),
        .s_axis_aresetn(S_AXIS_ARESETN),
        .s_axis_tdata(m00_data_fifo_to_auto_cc_TDATA),
        .s_axis_tdest(m00_data_fifo_to_auto_cc_TDEST),
        .s_axis_tlast(m00_data_fifo_to_auto_cc_TLAST),
        .s_axis_tready(m00_data_fifo_to_auto_cc_TREADY),
        .s_axis_tuser(m00_data_fifo_to_auto_cc_TUSER),
        .s_axis_tvalid(m00_data_fifo_to_auto_cc_TVALID));
  design_1_auto_ss_slidr_0 auto_ss_slidr
       (.aclk(M_AXIS_ACLK),
        .aresetn(M_AXIS_ARESETN),
        .m_axis_tdata(auto_ss_slidr_to_m00_regslice_TDATA),
        .m_axis_tlast(auto_ss_slidr_to_m00_regslice_TLAST),
        .m_axis_tready(auto_ss_slidr_to_m00_regslice_TREADY),
        .m_axis_tuser(auto_ss_slidr_to_m00_regslice_TUSER),
        .m_axis_tvalid(auto_ss_slidr_to_m00_regslice_TVALID),
        .s_axis_tdata(auto_cc_to_auto_ss_slidr_TDATA),
        .s_axis_tdest(auto_cc_to_auto_ss_slidr_TDEST),
        .s_axis_tlast(auto_cc_to_auto_ss_slidr_TLAST),
        .s_axis_tready(auto_cc_to_auto_ss_slidr_TREADY),
        .s_axis_tuser(auto_cc_to_auto_ss_slidr_TUSER),
        .s_axis_tvalid(auto_cc_to_auto_ss_slidr_TVALID));
  design_1_m00_data_fifo_0 m00_data_fifo
       (.axis_data_count(AXIS_DATA_COUNT_to_S_AXIS_DATA_COUNT),
        .axis_rd_data_count(AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT),
        .axis_wr_data_count(AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT),
        .m_axis_tdata(m00_data_fifo_to_auto_cc_TDATA),
        .m_axis_tdest(m00_data_fifo_to_auto_cc_TDEST),
        .m_axis_tlast(m00_data_fifo_to_auto_cc_TLAST),
        .m_axis_tready(m00_data_fifo_to_auto_cc_TREADY),
        .m_axis_tuser(m00_data_fifo_to_auto_cc_TUSER),
        .m_axis_tvalid(m00_data_fifo_to_auto_cc_TVALID),
        .s_axis_aclk(S_AXIS_ACLK),
        .s_axis_aresetn(S_AXIS_ARESETN),
        .s_axis_tdata(m00_couplers_to_m00_data_fifo_TDATA),
        .s_axis_tdest(m00_couplers_to_m00_data_fifo_TDEST),
        .s_axis_tlast(m00_couplers_to_m00_data_fifo_TLAST),
        .s_axis_tready(m00_couplers_to_m00_data_fifo_TREADY),
        .s_axis_tuser(m00_couplers_to_m00_data_fifo_TUSER),
        .s_axis_tvalid(m00_couplers_to_m00_data_fifo_TVALID));
  design_1_m00_regslice_0 m00_regslice
       (.aclk(M_AXIS_ACLK),
        .aresetn(M_AXIS_ARESETN),
        .m_axis_tdata(m00_regslice_to_m00_couplers_TDATA),
        .m_axis_tlast(m00_regslice_to_m00_couplers_TLAST),
        .m_axis_tready(m00_regslice_to_m00_couplers_TREADY),
        .m_axis_tuser(m00_regslice_to_m00_couplers_TUSER),
        .m_axis_tvalid(m00_regslice_to_m00_couplers_TVALID),
        .s_axis_tdata(auto_ss_slidr_to_m00_regslice_TDATA),
        .s_axis_tlast(auto_ss_slidr_to_m00_regslice_TLAST),
        .s_axis_tready(auto_ss_slidr_to_m00_regslice_TREADY),
        .s_axis_tuser(auto_ss_slidr_to_m00_regslice_TUSER),
        .s_axis_tvalid(auto_ss_slidr_to_m00_regslice_TVALID));
endmodule

module m01_couplers_imp_1OHHHDA
   (M_AXIS_ACLK,
    M_AXIS_ARESETN,
    M_AXIS_tdata,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tuser,
    M_AXIS_tvalid,
    S_AXIS_ACLK,
    S_AXIS_ARESETN,
    S_AXIS_tdata,
    S_AXIS_tdest,
    S_AXIS_tlast,
    S_AXIS_tready,
    S_AXIS_tuser,
    S_AXIS_tvalid);
  input M_AXIS_ACLK;
  input M_AXIS_ARESETN;
  output [7:0]M_AXIS_tdata;
  output M_AXIS_tlast;
  input M_AXIS_tready;
  output [0:0]M_AXIS_tuser;
  output M_AXIS_tvalid;
  input S_AXIS_ACLK;
  input S_AXIS_ARESETN;
  input [7:0]S_AXIS_tdata;
  input [7:0]S_AXIS_tdest;
  input S_AXIS_tlast;
  output S_AXIS_tready;
  input [0:0]S_AXIS_tuser;
  input S_AXIS_tvalid;

  wire [31:0]AXIS_DATA_COUNT_to_S_AXIS_DATA_COUNT;
  wire [31:0]AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT;
  wire [31:0]AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT;
  wire M_AXIS_ACLK;
  wire M_AXIS_ARESETN;
  wire S_AXIS_ACLK;
  wire S_AXIS_ARESETN;
  wire [7:0]auto_cc_to_auto_ss_slidr_TDATA;
  wire [7:0]auto_cc_to_auto_ss_slidr_TDEST;
  wire auto_cc_to_auto_ss_slidr_TLAST;
  wire auto_cc_to_auto_ss_slidr_TREADY;
  wire [0:0]auto_cc_to_auto_ss_slidr_TUSER;
  wire auto_cc_to_auto_ss_slidr_TVALID;
  wire [7:0]auto_ss_slidr_to_m01_regslice_TDATA;
  wire auto_ss_slidr_to_m01_regslice_TLAST;
  wire auto_ss_slidr_to_m01_regslice_TREADY;
  wire [0:0]auto_ss_slidr_to_m01_regslice_TUSER;
  wire auto_ss_slidr_to_m01_regslice_TVALID;
  wire [7:0]m01_couplers_to_m01_data_fifo_TDATA;
  wire [7:0]m01_couplers_to_m01_data_fifo_TDEST;
  wire m01_couplers_to_m01_data_fifo_TLAST;
  wire m01_couplers_to_m01_data_fifo_TREADY;
  wire [0:0]m01_couplers_to_m01_data_fifo_TUSER;
  wire m01_couplers_to_m01_data_fifo_TVALID;
  wire [7:0]m01_data_fifo_to_auto_cc_TDATA;
  wire [7:0]m01_data_fifo_to_auto_cc_TDEST;
  wire m01_data_fifo_to_auto_cc_TLAST;
  wire m01_data_fifo_to_auto_cc_TREADY;
  wire [0:0]m01_data_fifo_to_auto_cc_TUSER;
  wire m01_data_fifo_to_auto_cc_TVALID;
  wire [7:0]m01_regslice_to_m01_couplers_TDATA;
  wire m01_regslice_to_m01_couplers_TLAST;
  wire m01_regslice_to_m01_couplers_TREADY;
  wire [0:0]m01_regslice_to_m01_couplers_TUSER;
  wire m01_regslice_to_m01_couplers_TVALID;

  assign M_AXIS_tdata[7:0] = m01_regslice_to_m01_couplers_TDATA;
  assign M_AXIS_tlast = m01_regslice_to_m01_couplers_TLAST;
  assign M_AXIS_tuser[0] = m01_regslice_to_m01_couplers_TUSER;
  assign M_AXIS_tvalid = m01_regslice_to_m01_couplers_TVALID;
  assign S_AXIS_tready = m01_couplers_to_m01_data_fifo_TREADY;
  assign m01_couplers_to_m01_data_fifo_TDATA = S_AXIS_tdata[7:0];
  assign m01_couplers_to_m01_data_fifo_TDEST = S_AXIS_tdest[7:0];
  assign m01_couplers_to_m01_data_fifo_TLAST = S_AXIS_tlast;
  assign m01_couplers_to_m01_data_fifo_TUSER = S_AXIS_tuser[0];
  assign m01_couplers_to_m01_data_fifo_TVALID = S_AXIS_tvalid;
  assign m01_regslice_to_m01_couplers_TREADY = M_AXIS_tready;
  design_1_auto_cc_1 auto_cc
       (.m_axis_aclk(M_AXIS_ACLK),
        .m_axis_aresetn(M_AXIS_ARESETN),
        .m_axis_tdata(auto_cc_to_auto_ss_slidr_TDATA),
        .m_axis_tdest(auto_cc_to_auto_ss_slidr_TDEST),
        .m_axis_tlast(auto_cc_to_auto_ss_slidr_TLAST),
        .m_axis_tready(auto_cc_to_auto_ss_slidr_TREADY),
        .m_axis_tuser(auto_cc_to_auto_ss_slidr_TUSER),
        .m_axis_tvalid(auto_cc_to_auto_ss_slidr_TVALID),
        .s_axis_aclk(S_AXIS_ACLK),
        .s_axis_aresetn(S_AXIS_ARESETN),
        .s_axis_tdata(m01_data_fifo_to_auto_cc_TDATA),
        .s_axis_tdest(m01_data_fifo_to_auto_cc_TDEST),
        .s_axis_tlast(m01_data_fifo_to_auto_cc_TLAST),
        .s_axis_tready(m01_data_fifo_to_auto_cc_TREADY),
        .s_axis_tuser(m01_data_fifo_to_auto_cc_TUSER),
        .s_axis_tvalid(m01_data_fifo_to_auto_cc_TVALID));
  design_1_auto_ss_slidr_1 auto_ss_slidr
       (.aclk(M_AXIS_ACLK),
        .aresetn(M_AXIS_ARESETN),
        .m_axis_tdata(auto_ss_slidr_to_m01_regslice_TDATA),
        .m_axis_tlast(auto_ss_slidr_to_m01_regslice_TLAST),
        .m_axis_tready(auto_ss_slidr_to_m01_regslice_TREADY),
        .m_axis_tuser(auto_ss_slidr_to_m01_regslice_TUSER),
        .m_axis_tvalid(auto_ss_slidr_to_m01_regslice_TVALID),
        .s_axis_tdata(auto_cc_to_auto_ss_slidr_TDATA),
        .s_axis_tdest(auto_cc_to_auto_ss_slidr_TDEST),
        .s_axis_tlast(auto_cc_to_auto_ss_slidr_TLAST),
        .s_axis_tready(auto_cc_to_auto_ss_slidr_TREADY),
        .s_axis_tuser(auto_cc_to_auto_ss_slidr_TUSER),
        .s_axis_tvalid(auto_cc_to_auto_ss_slidr_TVALID));
  design_1_m01_data_fifo_0 m01_data_fifo
       (.axis_data_count(AXIS_DATA_COUNT_to_S_AXIS_DATA_COUNT),
        .axis_rd_data_count(AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT),
        .axis_wr_data_count(AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT),
        .m_axis_tdata(m01_data_fifo_to_auto_cc_TDATA),
        .m_axis_tdest(m01_data_fifo_to_auto_cc_TDEST),
        .m_axis_tlast(m01_data_fifo_to_auto_cc_TLAST),
        .m_axis_tready(m01_data_fifo_to_auto_cc_TREADY),
        .m_axis_tuser(m01_data_fifo_to_auto_cc_TUSER),
        .m_axis_tvalid(m01_data_fifo_to_auto_cc_TVALID),
        .s_axis_aclk(S_AXIS_ACLK),
        .s_axis_aresetn(S_AXIS_ARESETN),
        .s_axis_tdata(m01_couplers_to_m01_data_fifo_TDATA),
        .s_axis_tdest(m01_couplers_to_m01_data_fifo_TDEST),
        .s_axis_tlast(m01_couplers_to_m01_data_fifo_TLAST),
        .s_axis_tready(m01_couplers_to_m01_data_fifo_TREADY),
        .s_axis_tuser(m01_couplers_to_m01_data_fifo_TUSER),
        .s_axis_tvalid(m01_couplers_to_m01_data_fifo_TVALID));
  design_1_m01_regslice_0 m01_regslice
       (.aclk(M_AXIS_ACLK),
        .aresetn(M_AXIS_ARESETN),
        .m_axis_tdata(m01_regslice_to_m01_couplers_TDATA),
        .m_axis_tlast(m01_regslice_to_m01_couplers_TLAST),
        .m_axis_tready(m01_regslice_to_m01_couplers_TREADY),
        .m_axis_tuser(m01_regslice_to_m01_couplers_TUSER),
        .m_axis_tvalid(m01_regslice_to_m01_couplers_TVALID),
        .s_axis_tdata(auto_ss_slidr_to_m01_regslice_TDATA),
        .s_axis_tlast(auto_ss_slidr_to_m01_regslice_TLAST),
        .s_axis_tready(auto_ss_slidr_to_m01_regslice_TREADY),
        .s_axis_tuser(auto_ss_slidr_to_m01_regslice_TUSER),
        .s_axis_tvalid(auto_ss_slidr_to_m01_regslice_TVALID));
endmodule

module m02_couplers_imp_EA4A4S
   (M_AXIS_ACLK,
    M_AXIS_ARESETN,
    M_AXIS_tdata,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tuser,
    M_AXIS_tvalid,
    S_AXIS_ACLK,
    S_AXIS_ARESETN,
    S_AXIS_tdata,
    S_AXIS_tdest,
    S_AXIS_tlast,
    S_AXIS_tready,
    S_AXIS_tuser,
    S_AXIS_tvalid);
  input M_AXIS_ACLK;
  input M_AXIS_ARESETN;
  output [7:0]M_AXIS_tdata;
  output M_AXIS_tlast;
  input M_AXIS_tready;
  output [0:0]M_AXIS_tuser;
  output M_AXIS_tvalid;
  input S_AXIS_ACLK;
  input S_AXIS_ARESETN;
  input [7:0]S_AXIS_tdata;
  input [7:0]S_AXIS_tdest;
  input S_AXIS_tlast;
  output S_AXIS_tready;
  input [0:0]S_AXIS_tuser;
  input S_AXIS_tvalid;

  wire [31:0]AXIS_DATA_COUNT_to_S_AXIS_DATA_COUNT;
  wire [31:0]AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT;
  wire [31:0]AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT;
  wire M_AXIS_ACLK;
  wire M_AXIS_ARESETN;
  wire S_AXIS_ACLK;
  wire S_AXIS_ARESETN;
  wire [7:0]auto_cc_to_auto_ss_slidr_TDATA;
  wire [7:0]auto_cc_to_auto_ss_slidr_TDEST;
  wire auto_cc_to_auto_ss_slidr_TLAST;
  wire auto_cc_to_auto_ss_slidr_TREADY;
  wire [0:0]auto_cc_to_auto_ss_slidr_TUSER;
  wire auto_cc_to_auto_ss_slidr_TVALID;
  wire [7:0]auto_ss_slidr_to_m02_regslice_TDATA;
  wire auto_ss_slidr_to_m02_regslice_TLAST;
  wire auto_ss_slidr_to_m02_regslice_TREADY;
  wire [0:0]auto_ss_slidr_to_m02_regslice_TUSER;
  wire auto_ss_slidr_to_m02_regslice_TVALID;
  wire [7:0]m02_couplers_to_m02_data_fifo_TDATA;
  wire [7:0]m02_couplers_to_m02_data_fifo_TDEST;
  wire m02_couplers_to_m02_data_fifo_TLAST;
  wire m02_couplers_to_m02_data_fifo_TREADY;
  wire [0:0]m02_couplers_to_m02_data_fifo_TUSER;
  wire m02_couplers_to_m02_data_fifo_TVALID;
  wire [7:0]m02_data_fifo_to_auto_cc_TDATA;
  wire [7:0]m02_data_fifo_to_auto_cc_TDEST;
  wire m02_data_fifo_to_auto_cc_TLAST;
  wire m02_data_fifo_to_auto_cc_TREADY;
  wire [0:0]m02_data_fifo_to_auto_cc_TUSER;
  wire m02_data_fifo_to_auto_cc_TVALID;
  wire [7:0]m02_regslice_to_m02_couplers_TDATA;
  wire m02_regslice_to_m02_couplers_TLAST;
  wire m02_regslice_to_m02_couplers_TREADY;
  wire [0:0]m02_regslice_to_m02_couplers_TUSER;
  wire m02_regslice_to_m02_couplers_TVALID;

  assign M_AXIS_tdata[7:0] = m02_regslice_to_m02_couplers_TDATA;
  assign M_AXIS_tlast = m02_regslice_to_m02_couplers_TLAST;
  assign M_AXIS_tuser[0] = m02_regslice_to_m02_couplers_TUSER;
  assign M_AXIS_tvalid = m02_regslice_to_m02_couplers_TVALID;
  assign S_AXIS_tready = m02_couplers_to_m02_data_fifo_TREADY;
  assign m02_couplers_to_m02_data_fifo_TDATA = S_AXIS_tdata[7:0];
  assign m02_couplers_to_m02_data_fifo_TDEST = S_AXIS_tdest[7:0];
  assign m02_couplers_to_m02_data_fifo_TLAST = S_AXIS_tlast;
  assign m02_couplers_to_m02_data_fifo_TUSER = S_AXIS_tuser[0];
  assign m02_couplers_to_m02_data_fifo_TVALID = S_AXIS_tvalid;
  assign m02_regslice_to_m02_couplers_TREADY = M_AXIS_tready;
  design_1_auto_cc_2 auto_cc
       (.m_axis_aclk(M_AXIS_ACLK),
        .m_axis_aresetn(M_AXIS_ARESETN),
        .m_axis_tdata(auto_cc_to_auto_ss_slidr_TDATA),
        .m_axis_tdest(auto_cc_to_auto_ss_slidr_TDEST),
        .m_axis_tlast(auto_cc_to_auto_ss_slidr_TLAST),
        .m_axis_tready(auto_cc_to_auto_ss_slidr_TREADY),
        .m_axis_tuser(auto_cc_to_auto_ss_slidr_TUSER),
        .m_axis_tvalid(auto_cc_to_auto_ss_slidr_TVALID),
        .s_axis_aclk(S_AXIS_ACLK),
        .s_axis_aresetn(S_AXIS_ARESETN),
        .s_axis_tdata(m02_data_fifo_to_auto_cc_TDATA),
        .s_axis_tdest(m02_data_fifo_to_auto_cc_TDEST),
        .s_axis_tlast(m02_data_fifo_to_auto_cc_TLAST),
        .s_axis_tready(m02_data_fifo_to_auto_cc_TREADY),
        .s_axis_tuser(m02_data_fifo_to_auto_cc_TUSER),
        .s_axis_tvalid(m02_data_fifo_to_auto_cc_TVALID));
  design_1_auto_ss_slidr_2 auto_ss_slidr
       (.aclk(M_AXIS_ACLK),
        .aresetn(M_AXIS_ARESETN),
        .m_axis_tdata(auto_ss_slidr_to_m02_regslice_TDATA),
        .m_axis_tlast(auto_ss_slidr_to_m02_regslice_TLAST),
        .m_axis_tready(auto_ss_slidr_to_m02_regslice_TREADY),
        .m_axis_tuser(auto_ss_slidr_to_m02_regslice_TUSER),
        .m_axis_tvalid(auto_ss_slidr_to_m02_regslice_TVALID),
        .s_axis_tdata(auto_cc_to_auto_ss_slidr_TDATA),
        .s_axis_tdest(auto_cc_to_auto_ss_slidr_TDEST),
        .s_axis_tlast(auto_cc_to_auto_ss_slidr_TLAST),
        .s_axis_tready(auto_cc_to_auto_ss_slidr_TREADY),
        .s_axis_tuser(auto_cc_to_auto_ss_slidr_TUSER),
        .s_axis_tvalid(auto_cc_to_auto_ss_slidr_TVALID));
  design_1_m02_data_fifo_0 m02_data_fifo
       (.axis_data_count(AXIS_DATA_COUNT_to_S_AXIS_DATA_COUNT),
        .axis_rd_data_count(AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT),
        .axis_wr_data_count(AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT),
        .m_axis_tdata(m02_data_fifo_to_auto_cc_TDATA),
        .m_axis_tdest(m02_data_fifo_to_auto_cc_TDEST),
        .m_axis_tlast(m02_data_fifo_to_auto_cc_TLAST),
        .m_axis_tready(m02_data_fifo_to_auto_cc_TREADY),
        .m_axis_tuser(m02_data_fifo_to_auto_cc_TUSER),
        .m_axis_tvalid(m02_data_fifo_to_auto_cc_TVALID),
        .s_axis_aclk(S_AXIS_ACLK),
        .s_axis_aresetn(S_AXIS_ARESETN),
        .s_axis_tdata(m02_couplers_to_m02_data_fifo_TDATA),
        .s_axis_tdest(m02_couplers_to_m02_data_fifo_TDEST),
        .s_axis_tlast(m02_couplers_to_m02_data_fifo_TLAST),
        .s_axis_tready(m02_couplers_to_m02_data_fifo_TREADY),
        .s_axis_tuser(m02_couplers_to_m02_data_fifo_TUSER),
        .s_axis_tvalid(m02_couplers_to_m02_data_fifo_TVALID));
  design_1_m02_regslice_0 m02_regslice
       (.aclk(M_AXIS_ACLK),
        .aresetn(M_AXIS_ARESETN),
        .m_axis_tdata(m02_regslice_to_m02_couplers_TDATA),
        .m_axis_tlast(m02_regslice_to_m02_couplers_TLAST),
        .m_axis_tready(m02_regslice_to_m02_couplers_TREADY),
        .m_axis_tuser(m02_regslice_to_m02_couplers_TUSER),
        .m_axis_tvalid(m02_regslice_to_m02_couplers_TVALID),
        .s_axis_tdata(auto_ss_slidr_to_m02_regslice_TDATA),
        .s_axis_tlast(auto_ss_slidr_to_m02_regslice_TLAST),
        .s_axis_tready(auto_ss_slidr_to_m02_regslice_TREADY),
        .s_axis_tuser(auto_ss_slidr_to_m02_regslice_TUSER),
        .s_axis_tvalid(auto_ss_slidr_to_m02_regslice_TVALID));
endmodule

module m03_couplers_imp_1P37165
   (M_AXIS_ACLK,
    M_AXIS_ARESETN,
    M_AXIS_tdata,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tuser,
    M_AXIS_tvalid,
    S_AXIS_ACLK,
    S_AXIS_ARESETN,
    S_AXIS_tdata,
    S_AXIS_tdest,
    S_AXIS_tlast,
    S_AXIS_tready,
    S_AXIS_tuser,
    S_AXIS_tvalid);
  input M_AXIS_ACLK;
  input M_AXIS_ARESETN;
  output [7:0]M_AXIS_tdata;
  output M_AXIS_tlast;
  input M_AXIS_tready;
  output [0:0]M_AXIS_tuser;
  output M_AXIS_tvalid;
  input S_AXIS_ACLK;
  input S_AXIS_ARESETN;
  input [7:0]S_AXIS_tdata;
  input [7:0]S_AXIS_tdest;
  input S_AXIS_tlast;
  output S_AXIS_tready;
  input [0:0]S_AXIS_tuser;
  input S_AXIS_tvalid;

  wire [31:0]AXIS_DATA_COUNT_to_S_AXIS_DATA_COUNT;
  wire [31:0]AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT;
  wire [31:0]AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT;
  wire M_AXIS_ACLK;
  wire M_AXIS_ARESETN;
  wire S_AXIS_ACLK;
  wire S_AXIS_ARESETN;
  wire [7:0]auto_cc_to_auto_ss_slidr_TDATA;
  wire [7:0]auto_cc_to_auto_ss_slidr_TDEST;
  wire auto_cc_to_auto_ss_slidr_TLAST;
  wire auto_cc_to_auto_ss_slidr_TREADY;
  wire [0:0]auto_cc_to_auto_ss_slidr_TUSER;
  wire auto_cc_to_auto_ss_slidr_TVALID;
  wire [7:0]auto_ss_slidr_to_m03_regslice_TDATA;
  wire auto_ss_slidr_to_m03_regslice_TLAST;
  wire auto_ss_slidr_to_m03_regslice_TREADY;
  wire [0:0]auto_ss_slidr_to_m03_regslice_TUSER;
  wire auto_ss_slidr_to_m03_regslice_TVALID;
  wire [7:0]m03_couplers_to_m03_data_fifo_TDATA;
  wire [7:0]m03_couplers_to_m03_data_fifo_TDEST;
  wire m03_couplers_to_m03_data_fifo_TLAST;
  wire m03_couplers_to_m03_data_fifo_TREADY;
  wire [0:0]m03_couplers_to_m03_data_fifo_TUSER;
  wire m03_couplers_to_m03_data_fifo_TVALID;
  wire [7:0]m03_data_fifo_to_auto_cc_TDATA;
  wire [7:0]m03_data_fifo_to_auto_cc_TDEST;
  wire m03_data_fifo_to_auto_cc_TLAST;
  wire m03_data_fifo_to_auto_cc_TREADY;
  wire [0:0]m03_data_fifo_to_auto_cc_TUSER;
  wire m03_data_fifo_to_auto_cc_TVALID;
  wire [7:0]m03_regslice_to_m03_couplers_TDATA;
  wire m03_regslice_to_m03_couplers_TLAST;
  wire m03_regslice_to_m03_couplers_TREADY;
  wire [0:0]m03_regslice_to_m03_couplers_TUSER;
  wire m03_regslice_to_m03_couplers_TVALID;

  assign M_AXIS_tdata[7:0] = m03_regslice_to_m03_couplers_TDATA;
  assign M_AXIS_tlast = m03_regslice_to_m03_couplers_TLAST;
  assign M_AXIS_tuser[0] = m03_regslice_to_m03_couplers_TUSER;
  assign M_AXIS_tvalid = m03_regslice_to_m03_couplers_TVALID;
  assign S_AXIS_tready = m03_couplers_to_m03_data_fifo_TREADY;
  assign m03_couplers_to_m03_data_fifo_TDATA = S_AXIS_tdata[7:0];
  assign m03_couplers_to_m03_data_fifo_TDEST = S_AXIS_tdest[7:0];
  assign m03_couplers_to_m03_data_fifo_TLAST = S_AXIS_tlast;
  assign m03_couplers_to_m03_data_fifo_TUSER = S_AXIS_tuser[0];
  assign m03_couplers_to_m03_data_fifo_TVALID = S_AXIS_tvalid;
  assign m03_regslice_to_m03_couplers_TREADY = M_AXIS_tready;
  design_1_auto_cc_3 auto_cc
       (.m_axis_aclk(M_AXIS_ACLK),
        .m_axis_aresetn(M_AXIS_ARESETN),
        .m_axis_tdata(auto_cc_to_auto_ss_slidr_TDATA),
        .m_axis_tdest(auto_cc_to_auto_ss_slidr_TDEST),
        .m_axis_tlast(auto_cc_to_auto_ss_slidr_TLAST),
        .m_axis_tready(auto_cc_to_auto_ss_slidr_TREADY),
        .m_axis_tuser(auto_cc_to_auto_ss_slidr_TUSER),
        .m_axis_tvalid(auto_cc_to_auto_ss_slidr_TVALID),
        .s_axis_aclk(S_AXIS_ACLK),
        .s_axis_aresetn(S_AXIS_ARESETN),
        .s_axis_tdata(m03_data_fifo_to_auto_cc_TDATA),
        .s_axis_tdest(m03_data_fifo_to_auto_cc_TDEST),
        .s_axis_tlast(m03_data_fifo_to_auto_cc_TLAST),
        .s_axis_tready(m03_data_fifo_to_auto_cc_TREADY),
        .s_axis_tuser(m03_data_fifo_to_auto_cc_TUSER),
        .s_axis_tvalid(m03_data_fifo_to_auto_cc_TVALID));
  design_1_auto_ss_slidr_3 auto_ss_slidr
       (.aclk(M_AXIS_ACLK),
        .aresetn(M_AXIS_ARESETN),
        .m_axis_tdata(auto_ss_slidr_to_m03_regslice_TDATA),
        .m_axis_tlast(auto_ss_slidr_to_m03_regslice_TLAST),
        .m_axis_tready(auto_ss_slidr_to_m03_regslice_TREADY),
        .m_axis_tuser(auto_ss_slidr_to_m03_regslice_TUSER),
        .m_axis_tvalid(auto_ss_slidr_to_m03_regslice_TVALID),
        .s_axis_tdata(auto_cc_to_auto_ss_slidr_TDATA),
        .s_axis_tdest(auto_cc_to_auto_ss_slidr_TDEST),
        .s_axis_tlast(auto_cc_to_auto_ss_slidr_TLAST),
        .s_axis_tready(auto_cc_to_auto_ss_slidr_TREADY),
        .s_axis_tuser(auto_cc_to_auto_ss_slidr_TUSER),
        .s_axis_tvalid(auto_cc_to_auto_ss_slidr_TVALID));
  design_1_m03_data_fifo_0 m03_data_fifo
       (.axis_data_count(AXIS_DATA_COUNT_to_S_AXIS_DATA_COUNT),
        .axis_rd_data_count(AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT),
        .axis_wr_data_count(AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT),
        .m_axis_tdata(m03_data_fifo_to_auto_cc_TDATA),
        .m_axis_tdest(m03_data_fifo_to_auto_cc_TDEST),
        .m_axis_tlast(m03_data_fifo_to_auto_cc_TLAST),
        .m_axis_tready(m03_data_fifo_to_auto_cc_TREADY),
        .m_axis_tuser(m03_data_fifo_to_auto_cc_TUSER),
        .m_axis_tvalid(m03_data_fifo_to_auto_cc_TVALID),
        .s_axis_aclk(S_AXIS_ACLK),
        .s_axis_aresetn(S_AXIS_ARESETN),
        .s_axis_tdata(m03_couplers_to_m03_data_fifo_TDATA),
        .s_axis_tdest(m03_couplers_to_m03_data_fifo_TDEST),
        .s_axis_tlast(m03_couplers_to_m03_data_fifo_TLAST),
        .s_axis_tready(m03_couplers_to_m03_data_fifo_TREADY),
        .s_axis_tuser(m03_couplers_to_m03_data_fifo_TUSER),
        .s_axis_tvalid(m03_couplers_to_m03_data_fifo_TVALID));
  design_1_m03_regslice_0 m03_regslice
       (.aclk(M_AXIS_ACLK),
        .aresetn(M_AXIS_ARESETN),
        .m_axis_tdata(m03_regslice_to_m03_couplers_TDATA),
        .m_axis_tlast(m03_regslice_to_m03_couplers_TLAST),
        .m_axis_tready(m03_regslice_to_m03_couplers_TREADY),
        .m_axis_tuser(m03_regslice_to_m03_couplers_TUSER),
        .m_axis_tvalid(m03_regslice_to_m03_couplers_TVALID),
        .s_axis_tdata(auto_ss_slidr_to_m03_regslice_TDATA),
        .s_axis_tlast(auto_ss_slidr_to_m03_regslice_TLAST),
        .s_axis_tready(auto_ss_slidr_to_m03_regslice_TREADY),
        .s_axis_tuser(auto_ss_slidr_to_m03_regslice_TUSER),
        .s_axis_tvalid(auto_ss_slidr_to_m03_regslice_TVALID));
endmodule

module s00_couplers_imp_1LLE45P
   (M_AXIS_ACLK,
    M_AXIS_ARESETN,
    M_AXIS_tdata,
    M_AXIS_tdest,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tuser,
    M_AXIS_tvalid,
    S_AXIS_ACLK,
    S_AXIS_ARESETN,
    S_AXIS_tdata,
    S_AXIS_tdest,
    S_AXIS_tlast,
    S_AXIS_tuser,
    S_AXIS_tvalid);
  input M_AXIS_ACLK;
  input M_AXIS_ARESETN;
  output [7:0]M_AXIS_tdata;
  output [7:0]M_AXIS_tdest;
  output M_AXIS_tlast;
  input M_AXIS_tready;
  output [0:0]M_AXIS_tuser;
  output M_AXIS_tvalid;
  input S_AXIS_ACLK;
  input S_AXIS_ARESETN;
  input [7:0]S_AXIS_tdata;
  input [7:0]S_AXIS_tdest;
  input S_AXIS_tlast;
  input S_AXIS_tuser;
  input S_AXIS_tvalid;

  wire [31:0]AXIS_DATA_COUNT_to_S_AXIS_DATA_COUNT;
  wire [31:0]AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT;
  wire [31:0]AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT;
  wire M_AXIS_ACLK;
  wire M_AXIS_ARESETN;
  wire S_AXIS_ACLK;
  wire S_AXIS_ARESETN;
  wire [7:0]auto_cc_to_s00_data_fifo_TDATA;
  wire [7:0]auto_cc_to_s00_data_fifo_TDEST;
  wire auto_cc_to_s00_data_fifo_TLAST;
  wire auto_cc_to_s00_data_fifo_TREADY;
  wire [0:0]auto_cc_to_s00_data_fifo_TUSER;
  wire auto_cc_to_s00_data_fifo_TVALID;
  wire [7:0]auto_ss_r_to_s00_regslice_TDATA;
  wire [7:0]auto_ss_r_to_s00_regslice_TDEST;
  wire auto_ss_r_to_s00_regslice_TLAST;
  wire auto_ss_r_to_s00_regslice_TREADY;
  wire [0:0]auto_ss_r_to_s00_regslice_TUSER;
  wire auto_ss_r_to_s00_regslice_TVALID;
  wire [7:0]s00_couplers_to_auto_ss_r_TDATA;
  wire [7:0]s00_couplers_to_auto_ss_r_TDEST;
  wire s00_couplers_to_auto_ss_r_TLAST;
  wire s00_couplers_to_auto_ss_r_TUSER;
  wire s00_couplers_to_auto_ss_r_TVALID;
  wire [7:0]s00_data_fifo_to_s00_couplers_TDATA;
  wire [7:0]s00_data_fifo_to_s00_couplers_TDEST;
  wire s00_data_fifo_to_s00_couplers_TLAST;
  wire s00_data_fifo_to_s00_couplers_TREADY;
  wire [0:0]s00_data_fifo_to_s00_couplers_TUSER;
  wire s00_data_fifo_to_s00_couplers_TVALID;
  wire [7:0]s00_regslice_to_auto_cc_TDATA;
  wire [7:0]s00_regslice_to_auto_cc_TDEST;
  wire s00_regslice_to_auto_cc_TLAST;
  wire s00_regslice_to_auto_cc_TREADY;
  wire [0:0]s00_regslice_to_auto_cc_TUSER;
  wire s00_regslice_to_auto_cc_TVALID;

  assign M_AXIS_tdata[7:0] = s00_data_fifo_to_s00_couplers_TDATA;
  assign M_AXIS_tdest[7:0] = s00_data_fifo_to_s00_couplers_TDEST;
  assign M_AXIS_tlast = s00_data_fifo_to_s00_couplers_TLAST;
  assign M_AXIS_tuser[0] = s00_data_fifo_to_s00_couplers_TUSER;
  assign M_AXIS_tvalid = s00_data_fifo_to_s00_couplers_TVALID;
  assign s00_couplers_to_auto_ss_r_TDATA = S_AXIS_tdata[7:0];
  assign s00_couplers_to_auto_ss_r_TDEST = S_AXIS_tdest[7:0];
  assign s00_couplers_to_auto_ss_r_TLAST = S_AXIS_tlast;
  assign s00_couplers_to_auto_ss_r_TUSER = S_AXIS_tuser;
  assign s00_couplers_to_auto_ss_r_TVALID = S_AXIS_tvalid;
  assign s00_data_fifo_to_s00_couplers_TREADY = M_AXIS_tready;
  design_1_auto_cc_4 auto_cc
       (.m_axis_aclk(M_AXIS_ACLK),
        .m_axis_aresetn(M_AXIS_ARESETN),
        .m_axis_tdata(auto_cc_to_s00_data_fifo_TDATA),
        .m_axis_tdest(auto_cc_to_s00_data_fifo_TDEST),
        .m_axis_tlast(auto_cc_to_s00_data_fifo_TLAST),
        .m_axis_tready(auto_cc_to_s00_data_fifo_TREADY),
        .m_axis_tuser(auto_cc_to_s00_data_fifo_TUSER),
        .m_axis_tvalid(auto_cc_to_s00_data_fifo_TVALID),
        .s_axis_aclk(S_AXIS_ACLK),
        .s_axis_aresetn(S_AXIS_ARESETN),
        .s_axis_tdata(s00_regslice_to_auto_cc_TDATA),
        .s_axis_tdest(s00_regslice_to_auto_cc_TDEST),
        .s_axis_tlast(s00_regslice_to_auto_cc_TLAST),
        .s_axis_tready(s00_regslice_to_auto_cc_TREADY),
        .s_axis_tuser(s00_regslice_to_auto_cc_TUSER),
        .s_axis_tvalid(s00_regslice_to_auto_cc_TVALID));
  design_1_auto_ss_r_0 auto_ss_r
       (.aclk(S_AXIS_ACLK),
        .aresetn(S_AXIS_ARESETN),
        .m_axis_tdata(auto_ss_r_to_s00_regslice_TDATA),
        .m_axis_tdest(auto_ss_r_to_s00_regslice_TDEST),
        .m_axis_tlast(auto_ss_r_to_s00_regslice_TLAST),
        .m_axis_tready(auto_ss_r_to_s00_regslice_TREADY),
        .m_axis_tuser(auto_ss_r_to_s00_regslice_TUSER),
        .m_axis_tvalid(auto_ss_r_to_s00_regslice_TVALID),
        .s_axis_tdata(s00_couplers_to_auto_ss_r_TDATA),
        .s_axis_tdest(s00_couplers_to_auto_ss_r_TDEST),
        .s_axis_tlast(s00_couplers_to_auto_ss_r_TLAST),
        .s_axis_tuser(s00_couplers_to_auto_ss_r_TUSER),
        .s_axis_tvalid(s00_couplers_to_auto_ss_r_TVALID));
  design_1_s00_data_fifo_0 s00_data_fifo
       (.axis_data_count(AXIS_DATA_COUNT_to_S_AXIS_DATA_COUNT),
        .axis_rd_data_count(AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT),
        .axis_wr_data_count(AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT),
        .m_axis_tdata(s00_data_fifo_to_s00_couplers_TDATA),
        .m_axis_tdest(s00_data_fifo_to_s00_couplers_TDEST),
        .m_axis_tlast(s00_data_fifo_to_s00_couplers_TLAST),
        .m_axis_tready(s00_data_fifo_to_s00_couplers_TREADY),
        .m_axis_tuser(s00_data_fifo_to_s00_couplers_TUSER),
        .m_axis_tvalid(s00_data_fifo_to_s00_couplers_TVALID),
        .s_axis_aclk(M_AXIS_ACLK),
        .s_axis_aresetn(M_AXIS_ARESETN),
        .s_axis_tdata(auto_cc_to_s00_data_fifo_TDATA),
        .s_axis_tdest(auto_cc_to_s00_data_fifo_TDEST),
        .s_axis_tlast(auto_cc_to_s00_data_fifo_TLAST),
        .s_axis_tready(auto_cc_to_s00_data_fifo_TREADY),
        .s_axis_tuser(auto_cc_to_s00_data_fifo_TUSER),
        .s_axis_tvalid(auto_cc_to_s00_data_fifo_TVALID));
  design_1_s00_regslice_0 s00_regslice
       (.aclk(S_AXIS_ACLK),
        .aresetn(S_AXIS_ARESETN),
        .m_axis_tdata(s00_regslice_to_auto_cc_TDATA),
        .m_axis_tdest(s00_regslice_to_auto_cc_TDEST),
        .m_axis_tlast(s00_regslice_to_auto_cc_TLAST),
        .m_axis_tready(s00_regslice_to_auto_cc_TREADY),
        .m_axis_tuser(s00_regslice_to_auto_cc_TUSER),
        .m_axis_tvalid(s00_regslice_to_auto_cc_TVALID),
        .s_axis_tdata(auto_ss_r_to_s00_regslice_TDATA),
        .s_axis_tdest(auto_ss_r_to_s00_regslice_TDEST),
        .s_axis_tlast(auto_ss_r_to_s00_regslice_TLAST),
        .s_axis_tready(auto_ss_r_to_s00_regslice_TREADY),
        .s_axis_tuser(auto_ss_r_to_s00_regslice_TUSER),
        .s_axis_tvalid(auto_ss_r_to_s00_regslice_TVALID));
endmodule

module s00_couplers_imp_1O4UG5P
   (M_AXIS_ACLK,
    M_AXIS_ARESETN,
    M_AXIS_tdata,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tvalid,
    S_AXIS_ACLK,
    S_AXIS_ARESETN,
    S_AXIS_tdata,
    S_AXIS_tlast,
    S_AXIS_tvalid);
  input M_AXIS_ACLK;
  input M_AXIS_ARESETN;
  output [7:0]M_AXIS_tdata;
  output M_AXIS_tlast;
  input M_AXIS_tready;
  output M_AXIS_tvalid;
  input S_AXIS_ACLK;
  input S_AXIS_ARESETN;
  input [7:0]S_AXIS_tdata;
  input S_AXIS_tlast;
  input S_AXIS_tvalid;

  wire [31:0]AXIS_DATA_COUNT_to_S_AXIS_DATA_COUNT;
  wire [31:0]AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT;
  wire [31:0]AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT;
  wire M_AXIS_ACLK;
  wire M_AXIS_ARESETN;
  wire S_AXIS_ACLK;
  wire S_AXIS_ARESETN;
  wire [7:0]auto_cc_to_s00_data_fifo_TDATA;
  wire auto_cc_to_s00_data_fifo_TLAST;
  wire auto_cc_to_s00_data_fifo_TREADY;
  wire auto_cc_to_s00_data_fifo_TVALID;
  wire [7:0]auto_ss_r_to_s00_regslice_TDATA;
  wire auto_ss_r_to_s00_regslice_TLAST;
  wire auto_ss_r_to_s00_regslice_TREADY;
  wire auto_ss_r_to_s00_regslice_TVALID;
  wire [7:0]s00_couplers_to_auto_ss_r_TDATA;
  wire s00_couplers_to_auto_ss_r_TLAST;
  wire s00_couplers_to_auto_ss_r_TVALID;
  wire [7:0]s00_data_fifo_to_s00_couplers_TDATA;
  wire s00_data_fifo_to_s00_couplers_TLAST;
  wire s00_data_fifo_to_s00_couplers_TREADY;
  wire s00_data_fifo_to_s00_couplers_TVALID;
  wire [7:0]s00_regslice_to_auto_cc_TDATA;
  wire s00_regslice_to_auto_cc_TLAST;
  wire s00_regslice_to_auto_cc_TREADY;
  wire s00_regslice_to_auto_cc_TVALID;

  assign M_AXIS_tdata[7:0] = s00_data_fifo_to_s00_couplers_TDATA;
  assign M_AXIS_tlast = s00_data_fifo_to_s00_couplers_TLAST;
  assign M_AXIS_tvalid = s00_data_fifo_to_s00_couplers_TVALID;
  assign s00_couplers_to_auto_ss_r_TDATA = S_AXIS_tdata[7:0];
  assign s00_couplers_to_auto_ss_r_TLAST = S_AXIS_tlast;
  assign s00_couplers_to_auto_ss_r_TVALID = S_AXIS_tvalid;
  assign s00_data_fifo_to_s00_couplers_TREADY = M_AXIS_tready;
  design_1_auto_cc_6 auto_cc
       (.m_axis_aclk(M_AXIS_ACLK),
        .m_axis_aresetn(M_AXIS_ARESETN),
        .m_axis_tdata(auto_cc_to_s00_data_fifo_TDATA),
        .m_axis_tlast(auto_cc_to_s00_data_fifo_TLAST),
        .m_axis_tready(auto_cc_to_s00_data_fifo_TREADY),
        .m_axis_tvalid(auto_cc_to_s00_data_fifo_TVALID),
        .s_axis_aclk(S_AXIS_ACLK),
        .s_axis_aresetn(S_AXIS_ARESETN),
        .s_axis_tdata(s00_regslice_to_auto_cc_TDATA),
        .s_axis_tlast(s00_regslice_to_auto_cc_TLAST),
        .s_axis_tready(s00_regslice_to_auto_cc_TREADY),
        .s_axis_tvalid(s00_regslice_to_auto_cc_TVALID));
  design_1_auto_ss_r_1 auto_ss_r
       (.aclk(S_AXIS_ACLK),
        .aresetn(S_AXIS_ARESETN),
        .m_axis_tdata(auto_ss_r_to_s00_regslice_TDATA),
        .m_axis_tlast(auto_ss_r_to_s00_regslice_TLAST),
        .m_axis_tready(auto_ss_r_to_s00_regslice_TREADY),
        .m_axis_tvalid(auto_ss_r_to_s00_regslice_TVALID),
        .s_axis_tdata(s00_couplers_to_auto_ss_r_TDATA),
        .s_axis_tlast(s00_couplers_to_auto_ss_r_TLAST),
        .s_axis_tvalid(s00_couplers_to_auto_ss_r_TVALID));
  design_1_s00_data_fifo_1 s00_data_fifo
       (.axis_data_count(AXIS_DATA_COUNT_to_S_AXIS_DATA_COUNT),
        .axis_rd_data_count(AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT),
        .axis_wr_data_count(AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT),
        .m_axis_tdata(s00_data_fifo_to_s00_couplers_TDATA),
        .m_axis_tlast(s00_data_fifo_to_s00_couplers_TLAST),
        .m_axis_tready(s00_data_fifo_to_s00_couplers_TREADY),
        .m_axis_tvalid(s00_data_fifo_to_s00_couplers_TVALID),
        .s_axis_aclk(M_AXIS_ACLK),
        .s_axis_aresetn(M_AXIS_ARESETN),
        .s_axis_tdata(auto_cc_to_s00_data_fifo_TDATA),
        .s_axis_tlast(auto_cc_to_s00_data_fifo_TLAST),
        .s_axis_tready(auto_cc_to_s00_data_fifo_TREADY),
        .s_axis_tvalid(auto_cc_to_s00_data_fifo_TVALID));
  design_1_s00_regslice_1 s00_regslice
       (.aclk(S_AXIS_ACLK),
        .aresetn(S_AXIS_ARESETN),
        .m_axis_tdata(s00_regslice_to_auto_cc_TDATA),
        .m_axis_tlast(s00_regslice_to_auto_cc_TLAST),
        .m_axis_tready(s00_regslice_to_auto_cc_TREADY),
        .m_axis_tvalid(s00_regslice_to_auto_cc_TVALID),
        .s_axis_tdata(auto_ss_r_to_s00_regslice_TDATA),
        .s_axis_tlast(auto_ss_r_to_s00_regslice_TLAST),
        .s_axis_tready(auto_ss_r_to_s00_regslice_TREADY),
        .s_axis_tvalid(auto_ss_r_to_s00_regslice_TVALID));
endmodule

module s01_couplers_imp_FIFOH8
   (M_AXIS_ACLK,
    M_AXIS_ARESETN,
    M_AXIS_tdata,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tvalid,
    S_AXIS_ACLK,
    S_AXIS_ARESETN,
    S_AXIS_tdata,
    S_AXIS_tlast,
    S_AXIS_tvalid);
  input M_AXIS_ACLK;
  input M_AXIS_ARESETN;
  output [7:0]M_AXIS_tdata;
  output M_AXIS_tlast;
  input M_AXIS_tready;
  output M_AXIS_tvalid;
  input S_AXIS_ACLK;
  input S_AXIS_ARESETN;
  input [7:0]S_AXIS_tdata;
  input S_AXIS_tlast;
  input S_AXIS_tvalid;

  wire [31:0]AXIS_DATA_COUNT_to_S_AXIS_DATA_COUNT;
  wire [31:0]AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT;
  wire [31:0]AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT;
  wire M_AXIS_ACLK;
  wire M_AXIS_ARESETN;
  wire S_AXIS_ACLK;
  wire S_AXIS_ARESETN;
  wire [7:0]auto_cc_to_s01_data_fifo_TDATA;
  wire auto_cc_to_s01_data_fifo_TLAST;
  wire auto_cc_to_s01_data_fifo_TREADY;
  wire auto_cc_to_s01_data_fifo_TVALID;
  wire [7:0]auto_ss_r_to_s01_regslice_TDATA;
  wire auto_ss_r_to_s01_regslice_TLAST;
  wire auto_ss_r_to_s01_regslice_TREADY;
  wire auto_ss_r_to_s01_regslice_TVALID;
  wire [7:0]s01_couplers_to_auto_ss_r_TDATA;
  wire s01_couplers_to_auto_ss_r_TLAST;
  wire s01_couplers_to_auto_ss_r_TVALID;
  wire [7:0]s01_data_fifo_to_s01_couplers_TDATA;
  wire s01_data_fifo_to_s01_couplers_TLAST;
  wire s01_data_fifo_to_s01_couplers_TREADY;
  wire s01_data_fifo_to_s01_couplers_TVALID;
  wire [7:0]s01_regslice_to_auto_cc_TDATA;
  wire s01_regslice_to_auto_cc_TLAST;
  wire s01_regslice_to_auto_cc_TREADY;
  wire s01_regslice_to_auto_cc_TVALID;

  assign M_AXIS_tdata[7:0] = s01_data_fifo_to_s01_couplers_TDATA;
  assign M_AXIS_tlast = s01_data_fifo_to_s01_couplers_TLAST;
  assign M_AXIS_tvalid = s01_data_fifo_to_s01_couplers_TVALID;
  assign s01_couplers_to_auto_ss_r_TDATA = S_AXIS_tdata[7:0];
  assign s01_couplers_to_auto_ss_r_TLAST = S_AXIS_tlast;
  assign s01_couplers_to_auto_ss_r_TVALID = S_AXIS_tvalid;
  assign s01_data_fifo_to_s01_couplers_TREADY = M_AXIS_tready;
  design_1_auto_cc_7 auto_cc
       (.m_axis_aclk(M_AXIS_ACLK),
        .m_axis_aresetn(M_AXIS_ARESETN),
        .m_axis_tdata(auto_cc_to_s01_data_fifo_TDATA),
        .m_axis_tlast(auto_cc_to_s01_data_fifo_TLAST),
        .m_axis_tready(auto_cc_to_s01_data_fifo_TREADY),
        .m_axis_tvalid(auto_cc_to_s01_data_fifo_TVALID),
        .s_axis_aclk(S_AXIS_ACLK),
        .s_axis_aresetn(S_AXIS_ARESETN),
        .s_axis_tdata(s01_regslice_to_auto_cc_TDATA),
        .s_axis_tlast(s01_regslice_to_auto_cc_TLAST),
        .s_axis_tready(s01_regslice_to_auto_cc_TREADY),
        .s_axis_tvalid(s01_regslice_to_auto_cc_TVALID));
  design_1_auto_ss_r_2 auto_ss_r
       (.aclk(S_AXIS_ACLK),
        .aresetn(S_AXIS_ARESETN),
        .m_axis_tdata(auto_ss_r_to_s01_regslice_TDATA),
        .m_axis_tlast(auto_ss_r_to_s01_regslice_TLAST),
        .m_axis_tready(auto_ss_r_to_s01_regslice_TREADY),
        .m_axis_tvalid(auto_ss_r_to_s01_regslice_TVALID),
        .s_axis_tdata(s01_couplers_to_auto_ss_r_TDATA),
        .s_axis_tlast(s01_couplers_to_auto_ss_r_TLAST),
        .s_axis_tvalid(s01_couplers_to_auto_ss_r_TVALID));
  design_1_s01_data_fifo_0 s01_data_fifo
       (.axis_data_count(AXIS_DATA_COUNT_to_S_AXIS_DATA_COUNT),
        .axis_rd_data_count(AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT),
        .axis_wr_data_count(AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT),
        .m_axis_tdata(s01_data_fifo_to_s01_couplers_TDATA),
        .m_axis_tlast(s01_data_fifo_to_s01_couplers_TLAST),
        .m_axis_tready(s01_data_fifo_to_s01_couplers_TREADY),
        .m_axis_tvalid(s01_data_fifo_to_s01_couplers_TVALID),
        .s_axis_aclk(M_AXIS_ACLK),
        .s_axis_aresetn(M_AXIS_ARESETN),
        .s_axis_tdata(auto_cc_to_s01_data_fifo_TDATA),
        .s_axis_tlast(auto_cc_to_s01_data_fifo_TLAST),
        .s_axis_tready(auto_cc_to_s01_data_fifo_TREADY),
        .s_axis_tvalid(auto_cc_to_s01_data_fifo_TVALID));
  design_1_s01_regslice_0 s01_regslice
       (.aclk(S_AXIS_ACLK),
        .aresetn(S_AXIS_ARESETN),
        .m_axis_tdata(s01_regslice_to_auto_cc_TDATA),
        .m_axis_tlast(s01_regslice_to_auto_cc_TLAST),
        .m_axis_tready(s01_regslice_to_auto_cc_TREADY),
        .m_axis_tvalid(s01_regslice_to_auto_cc_TVALID),
        .s_axis_tdata(auto_ss_r_to_s01_regslice_TDATA),
        .s_axis_tlast(auto_ss_r_to_s01_regslice_TLAST),
        .s_axis_tready(auto_ss_r_to_s01_regslice_TREADY),
        .s_axis_tvalid(auto_ss_r_to_s01_regslice_TVALID));
endmodule

module s02_couplers_imp_1PFTW3Y
   (M_AXIS_ACLK,
    M_AXIS_ARESETN,
    M_AXIS_tdata,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tvalid,
    S_AXIS_ACLK,
    S_AXIS_ARESETN,
    S_AXIS_tdata,
    S_AXIS_tlast,
    S_AXIS_tvalid);
  input M_AXIS_ACLK;
  input M_AXIS_ARESETN;
  output [7:0]M_AXIS_tdata;
  output M_AXIS_tlast;
  input M_AXIS_tready;
  output M_AXIS_tvalid;
  input S_AXIS_ACLK;
  input S_AXIS_ARESETN;
  input [7:0]S_AXIS_tdata;
  input S_AXIS_tlast;
  input S_AXIS_tvalid;

  wire [31:0]AXIS_DATA_COUNT_to_S_AXIS_DATA_COUNT;
  wire [31:0]AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT;
  wire [31:0]AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT;
  wire M_AXIS_ACLK;
  wire M_AXIS_ARESETN;
  wire S_AXIS_ACLK;
  wire S_AXIS_ARESETN;
  wire [7:0]auto_cc_to_s02_data_fifo_TDATA;
  wire auto_cc_to_s02_data_fifo_TLAST;
  wire auto_cc_to_s02_data_fifo_TREADY;
  wire auto_cc_to_s02_data_fifo_TVALID;
  wire [7:0]auto_ss_r_to_s02_regslice_TDATA;
  wire auto_ss_r_to_s02_regslice_TLAST;
  wire auto_ss_r_to_s02_regslice_TREADY;
  wire auto_ss_r_to_s02_regslice_TVALID;
  wire [7:0]s02_couplers_to_auto_ss_r_TDATA;
  wire s02_couplers_to_auto_ss_r_TLAST;
  wire s02_couplers_to_auto_ss_r_TVALID;
  wire [7:0]s02_data_fifo_to_s02_couplers_TDATA;
  wire s02_data_fifo_to_s02_couplers_TLAST;
  wire s02_data_fifo_to_s02_couplers_TREADY;
  wire s02_data_fifo_to_s02_couplers_TVALID;
  wire [7:0]s02_regslice_to_auto_cc_TDATA;
  wire s02_regslice_to_auto_cc_TLAST;
  wire s02_regslice_to_auto_cc_TREADY;
  wire s02_regslice_to_auto_cc_TVALID;

  assign M_AXIS_tdata[7:0] = s02_data_fifo_to_s02_couplers_TDATA;
  assign M_AXIS_tlast = s02_data_fifo_to_s02_couplers_TLAST;
  assign M_AXIS_tvalid = s02_data_fifo_to_s02_couplers_TVALID;
  assign s02_couplers_to_auto_ss_r_TDATA = S_AXIS_tdata[7:0];
  assign s02_couplers_to_auto_ss_r_TLAST = S_AXIS_tlast;
  assign s02_couplers_to_auto_ss_r_TVALID = S_AXIS_tvalid;
  assign s02_data_fifo_to_s02_couplers_TREADY = M_AXIS_tready;
  design_1_auto_cc_8 auto_cc
       (.m_axis_aclk(M_AXIS_ACLK),
        .m_axis_aresetn(M_AXIS_ARESETN),
        .m_axis_tdata(auto_cc_to_s02_data_fifo_TDATA),
        .m_axis_tlast(auto_cc_to_s02_data_fifo_TLAST),
        .m_axis_tready(auto_cc_to_s02_data_fifo_TREADY),
        .m_axis_tvalid(auto_cc_to_s02_data_fifo_TVALID),
        .s_axis_aclk(S_AXIS_ACLK),
        .s_axis_aresetn(S_AXIS_ARESETN),
        .s_axis_tdata(s02_regslice_to_auto_cc_TDATA),
        .s_axis_tlast(s02_regslice_to_auto_cc_TLAST),
        .s_axis_tready(s02_regslice_to_auto_cc_TREADY),
        .s_axis_tvalid(s02_regslice_to_auto_cc_TVALID));
  design_1_auto_ss_r_3 auto_ss_r
       (.aclk(S_AXIS_ACLK),
        .aresetn(S_AXIS_ARESETN),
        .m_axis_tdata(auto_ss_r_to_s02_regslice_TDATA),
        .m_axis_tlast(auto_ss_r_to_s02_regslice_TLAST),
        .m_axis_tready(auto_ss_r_to_s02_regslice_TREADY),
        .m_axis_tvalid(auto_ss_r_to_s02_regslice_TVALID),
        .s_axis_tdata(s02_couplers_to_auto_ss_r_TDATA),
        .s_axis_tlast(s02_couplers_to_auto_ss_r_TLAST),
        .s_axis_tvalid(s02_couplers_to_auto_ss_r_TVALID));
  design_1_s02_data_fifo_0 s02_data_fifo
       (.axis_data_count(AXIS_DATA_COUNT_to_S_AXIS_DATA_COUNT),
        .axis_rd_data_count(AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT),
        .axis_wr_data_count(AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT),
        .m_axis_tdata(s02_data_fifo_to_s02_couplers_TDATA),
        .m_axis_tlast(s02_data_fifo_to_s02_couplers_TLAST),
        .m_axis_tready(s02_data_fifo_to_s02_couplers_TREADY),
        .m_axis_tvalid(s02_data_fifo_to_s02_couplers_TVALID),
        .s_axis_aclk(M_AXIS_ACLK),
        .s_axis_aresetn(M_AXIS_ARESETN),
        .s_axis_tdata(auto_cc_to_s02_data_fifo_TDATA),
        .s_axis_tlast(auto_cc_to_s02_data_fifo_TLAST),
        .s_axis_tready(auto_cc_to_s02_data_fifo_TREADY),
        .s_axis_tvalid(auto_cc_to_s02_data_fifo_TVALID));
  design_1_s02_regslice_0 s02_regslice
       (.aclk(S_AXIS_ACLK),
        .aresetn(S_AXIS_ARESETN),
        .m_axis_tdata(s02_regslice_to_auto_cc_TDATA),
        .m_axis_tlast(s02_regslice_to_auto_cc_TLAST),
        .m_axis_tready(s02_regslice_to_auto_cc_TREADY),
        .m_axis_tvalid(s02_regslice_to_auto_cc_TVALID),
        .s_axis_tdata(auto_ss_r_to_s02_regslice_TDATA),
        .s_axis_tlast(auto_ss_r_to_s02_regslice_TLAST),
        .s_axis_tready(auto_ss_r_to_s02_regslice_TREADY),
        .s_axis_tvalid(auto_ss_r_to_s02_regslice_TVALID));
endmodule

module s03_couplers_imp_DXSNQN
   (M_AXIS_ACLK,
    M_AXIS_ARESETN,
    M_AXIS_tdata,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tvalid,
    S_AXIS_ACLK,
    S_AXIS_ARESETN,
    S_AXIS_tdata,
    S_AXIS_tlast,
    S_AXIS_tvalid);
  input M_AXIS_ACLK;
  input M_AXIS_ARESETN;
  output [7:0]M_AXIS_tdata;
  output M_AXIS_tlast;
  input M_AXIS_tready;
  output M_AXIS_tvalid;
  input S_AXIS_ACLK;
  input S_AXIS_ARESETN;
  input [7:0]S_AXIS_tdata;
  input S_AXIS_tlast;
  input S_AXIS_tvalid;

  wire [31:0]AXIS_DATA_COUNT_to_S_AXIS_DATA_COUNT;
  wire [31:0]AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT;
  wire [31:0]AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT;
  wire M_AXIS_ACLK;
  wire M_AXIS_ARESETN;
  wire S_AXIS_ACLK;
  wire S_AXIS_ARESETN;
  wire [7:0]auto_cc_to_s03_data_fifo_TDATA;
  wire auto_cc_to_s03_data_fifo_TLAST;
  wire auto_cc_to_s03_data_fifo_TREADY;
  wire auto_cc_to_s03_data_fifo_TVALID;
  wire [7:0]auto_ss_r_to_s03_regslice_TDATA;
  wire auto_ss_r_to_s03_regslice_TLAST;
  wire auto_ss_r_to_s03_regslice_TREADY;
  wire auto_ss_r_to_s03_regslice_TVALID;
  wire [7:0]s03_couplers_to_auto_ss_r_TDATA;
  wire s03_couplers_to_auto_ss_r_TLAST;
  wire s03_couplers_to_auto_ss_r_TVALID;
  wire [7:0]s03_data_fifo_to_s03_couplers_TDATA;
  wire s03_data_fifo_to_s03_couplers_TLAST;
  wire s03_data_fifo_to_s03_couplers_TREADY;
  wire s03_data_fifo_to_s03_couplers_TVALID;
  wire [7:0]s03_regslice_to_auto_cc_TDATA;
  wire s03_regslice_to_auto_cc_TLAST;
  wire s03_regslice_to_auto_cc_TREADY;
  wire s03_regslice_to_auto_cc_TVALID;

  assign M_AXIS_tdata[7:0] = s03_data_fifo_to_s03_couplers_TDATA;
  assign M_AXIS_tlast = s03_data_fifo_to_s03_couplers_TLAST;
  assign M_AXIS_tvalid = s03_data_fifo_to_s03_couplers_TVALID;
  assign s03_couplers_to_auto_ss_r_TDATA = S_AXIS_tdata[7:0];
  assign s03_couplers_to_auto_ss_r_TLAST = S_AXIS_tlast;
  assign s03_couplers_to_auto_ss_r_TVALID = S_AXIS_tvalid;
  assign s03_data_fifo_to_s03_couplers_TREADY = M_AXIS_tready;
  design_1_auto_cc_9 auto_cc
       (.m_axis_aclk(M_AXIS_ACLK),
        .m_axis_aresetn(M_AXIS_ARESETN),
        .m_axis_tdata(auto_cc_to_s03_data_fifo_TDATA),
        .m_axis_tlast(auto_cc_to_s03_data_fifo_TLAST),
        .m_axis_tready(auto_cc_to_s03_data_fifo_TREADY),
        .m_axis_tvalid(auto_cc_to_s03_data_fifo_TVALID),
        .s_axis_aclk(S_AXIS_ACLK),
        .s_axis_aresetn(S_AXIS_ARESETN),
        .s_axis_tdata(s03_regslice_to_auto_cc_TDATA),
        .s_axis_tlast(s03_regslice_to_auto_cc_TLAST),
        .s_axis_tready(s03_regslice_to_auto_cc_TREADY),
        .s_axis_tvalid(s03_regslice_to_auto_cc_TVALID));
  design_1_auto_ss_r_4 auto_ss_r
       (.aclk(S_AXIS_ACLK),
        .aresetn(S_AXIS_ARESETN),
        .m_axis_tdata(auto_ss_r_to_s03_regslice_TDATA),
        .m_axis_tlast(auto_ss_r_to_s03_regslice_TLAST),
        .m_axis_tready(auto_ss_r_to_s03_regslice_TREADY),
        .m_axis_tvalid(auto_ss_r_to_s03_regslice_TVALID),
        .s_axis_tdata(s03_couplers_to_auto_ss_r_TDATA),
        .s_axis_tlast(s03_couplers_to_auto_ss_r_TLAST),
        .s_axis_tvalid(s03_couplers_to_auto_ss_r_TVALID));
  design_1_s03_data_fifo_0 s03_data_fifo
       (.axis_data_count(AXIS_DATA_COUNT_to_S_AXIS_DATA_COUNT),
        .axis_rd_data_count(AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT),
        .axis_wr_data_count(AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT),
        .m_axis_tdata(s03_data_fifo_to_s03_couplers_TDATA),
        .m_axis_tlast(s03_data_fifo_to_s03_couplers_TLAST),
        .m_axis_tready(s03_data_fifo_to_s03_couplers_TREADY),
        .m_axis_tvalid(s03_data_fifo_to_s03_couplers_TVALID),
        .s_axis_aclk(M_AXIS_ACLK),
        .s_axis_aresetn(M_AXIS_ARESETN),
        .s_axis_tdata(auto_cc_to_s03_data_fifo_TDATA),
        .s_axis_tlast(auto_cc_to_s03_data_fifo_TLAST),
        .s_axis_tready(auto_cc_to_s03_data_fifo_TREADY),
        .s_axis_tvalid(auto_cc_to_s03_data_fifo_TVALID));
  design_1_s03_regslice_0 s03_regslice
       (.aclk(S_AXIS_ACLK),
        .aresetn(S_AXIS_ARESETN),
        .m_axis_tdata(s03_regslice_to_auto_cc_TDATA),
        .m_axis_tlast(s03_regslice_to_auto_cc_TLAST),
        .m_axis_tready(s03_regslice_to_auto_cc_TREADY),
        .m_axis_tvalid(s03_regslice_to_auto_cc_TVALID),
        .s_axis_tdata(auto_ss_r_to_s03_regslice_TDATA),
        .s_axis_tlast(auto_ss_r_to_s03_regslice_TLAST),
        .s_axis_tready(auto_ss_r_to_s03_regslice_TREADY),
        .s_axis_tvalid(auto_ss_r_to_s03_regslice_TVALID));
endmodule
