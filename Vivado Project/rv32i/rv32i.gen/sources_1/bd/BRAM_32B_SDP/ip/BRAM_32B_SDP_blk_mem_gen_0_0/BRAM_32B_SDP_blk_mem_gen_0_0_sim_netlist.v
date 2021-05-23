// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat May 15 19:08:16 2021
// Host        : Harid-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top BRAM_32B_SDP_blk_mem_gen_0_0 -prefix
//               BRAM_32B_SDP_blk_mem_gen_0_0_ BRAM_32B_SDP_blk_mem_gen_0_0_sim_netlist.v
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20384)
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
