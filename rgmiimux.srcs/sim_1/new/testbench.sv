`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/11/2019 08:39:52 PM
// Design Name: 
// Module Name: testbench
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


module testbench(

    );
    logic rst;
    logic clk;
    logic rx_clk;
    logic rx_clk_90deg;
    logic clk200M;
    logic packet_clk;
    logic [7:0] count = 0;
    logic trans_1;
    logic [3:0] data1_1;
    logic [3:0] data2_1;
    logic [3:0] rd_1;
    logic rx_ctl_oddr_1;
    logic [7:0] example1 [75:0];
    
    initial begin
        rst = 1;
        clk = 0;
        rx_clk = 0;
        clk200M = 0;
        packet_clk = 0;
        rx_clk_90deg = 0;
        $readmemh("example_frame.mem", example1);
        #2;
        forever rx_clk_90deg = #4 ~rx_clk; // 125MHz, 90 deg shift
    end

    initial begin
        #10;
        rst = 0;
    end
    
    always clk = #10 ~clk; // 50MHz
    always rx_clk = #4 ~rx_clk; // 125MHz
    always clk200M = #2.5 ~clk200M; // 200MHz
    always packet_clk = #1000 ~packet_clk; // 500KHz
    
    always_ff @ (posedge rx_clk) begin
        if (packet_clk) begin
            count <= count + 1;
        end else begin
            count <= 0;
        end
        trans_1 <= packet_clk && count < 8'd76;
        data1_1 <= packet_clk ? example1[count][3:0] : 4'b0000;
        data2_1 <= packet_clk ? example1[count][7:4] : 4'b0000;
    end
    
    genvar i;
    for (i = 0;i < 4;i++) begin
        ODDR #(
            .DDR_CLK_EDGE("SAME_EDGE")
        ) oddr_inst (
            .D1(data1_1[i]),
            .D2(data2_1[i]),
            .C(rx_clk),
            .CE(1'b1),
            .Q(rd_1[i]),
            .R(1'b0)
        );
    end

    ODDR #(
        .DDR_CLK_EDGE("SAME_EDGE")
    ) oddr_inst_ctl_1 (
        .D1(trans_1),
        .D2(trans_1),
        .C(rx_clk),
        .CE(1'b1),
        .Q(rx_ctl_oddr_1),
        .R(1'b0)
    );

    logic rgmii1_ctl;
    logic [3:0] rgmii1_data;
    logic rgmii1_clk;
    logic rgmii2_ctl;
    logic [3:0] rgmii2_data;
    logic rgmii2_clk;
    logic rgmii3_ctl;
    logic [3:0] rgmii3_data;
    logic rgmii3_clk;
    logic rgmii4_ctl;
    logic [3:0] rgmii4_data;
    logic rgmii4_clk;

    design_1_wrapper design_1_wrapper_inst(
        .rstn(~rst),
        .clk125M(rx_clk),
        .clk200M(clk200M),

        .rgmii_rd(rd_1),
        .rgmii_rx_ctl(rx_ctl_oddr_1),
        .rgmii_rxc(rx_clk_90deg),
        
        .rgmii1_rd(rgmii1_data),
        .rgmii1_rx_ctl(rgmii1_ctl),
        .rgmii1_rxc(rgmii1_clk),
        .rgmii1_td(rgmii1_data),
        .rgmii1_tx_ctl(rgmii1_ctl),
        .rgmii1_txc(rgmii1_clk),

        .rgmii2_rd(rgmii2_data),
        .rgmii2_rx_ctl(rgmii2_ctl),
        .rgmii2_rxc(rgmii2_clk),
        .rgmii2_td(rgmii2_data),
        .rgmii2_tx_ctl(rgmii2_ctl),
        .rgmii2_txc(rgmii2_clk),

        .rgmii3_rd(rgmii3_data),
        .rgmii3_rx_ctl(rgmii3_ctl),
        .rgmii3_rxc(rgmii3_clk),
        .rgmii3_td(rgmii3_data),
        .rgmii3_tx_ctl(rgmii3_ctl),
        .rgmii3_txc(rgmii3_clk),

        .rgmii4_rd(rgmii4_data),
        .rgmii4_rx_ctl(rgmii4_ctl),
        .rgmii4_rxc(rgmii4_clk),
        .rgmii4_td(rgmii4_data),
        .rgmii4_tx_ctl(rgmii4_ctl),
        .rgmii4_txc(rgmii4_clk)
    );
endmodule
