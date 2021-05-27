// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu May 27 11:15:19 2021
// Host        : Harid-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ BRAM_32B_SDP_blk_mem_gen_0_0_sim_netlist.v
// Design      : BRAM_32B_SDP_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "BRAM_32B_SDP_blk_mem_gen_0_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20528)
`pragma protect data_block
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
TliorhduUR4=
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
