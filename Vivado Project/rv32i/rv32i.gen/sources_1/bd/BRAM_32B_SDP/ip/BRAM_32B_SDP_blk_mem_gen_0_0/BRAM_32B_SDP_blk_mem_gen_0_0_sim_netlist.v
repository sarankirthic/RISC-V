// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Feb 16 21:26:34 2021
// Host        : Harid-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {d:/Harid/Hobby Projects/Electronics/FPGA
//               Projetcs/riscv_j/riscv_j.gen/sources_1/bd/BRAM_32B_SDP/ip/BRAM_32B_SDP_blk_mem_gen_0_0/BRAM_32B_SDP_blk_mem_gen_0_0_sim_netlist.v}
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
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20656)
`pragma protect data_block
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
7jCXZgf5u7go1um0G8rhLP/fN1xq8g==
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
