// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu May 27 11:15:19 2021
// Host        : Harid-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {d:/Harid/College/Win 2020/ECE3003/Project/RISC-V/Vivado
//               Project/rv32i/rv32i.gen/sources_1/bd/BRAM_32B_SDP/ip/BRAM_32B_SDP_blk_mem_gen_0_0/BRAM_32B_SDP_blk_mem_gen_0_0_sim_netlist.v}
// Design      : BRAM_32B_SDP_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "BRAM_32B_SDP_blk_mem_gen_0_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module BRAM_32B_SDP_blk_mem_gen_0_0
   (clka,
    ena,
    wea,
    addra,
    dina,
    clkb,
    enb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE WRITE_ONLY, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [4:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_ONLY, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [4:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;

  wire [4:0]addra;
  wire [4:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_douta_UNCONNECTED;
  wire [4:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [4:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "5" *) 
  (* C_ADDRB_WIDTH = "5" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.498802 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "BRAM_32B_SDP_blk_mem_gen_0_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "32" *) 
  (* C_READ_DEPTH_B = "32" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "32" *) 
  (* C_WRITE_DEPTH_B = "32" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  BRAM_32B_SDP_blk_mem_gen_0_0_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[31:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[4:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[4:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20672)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
