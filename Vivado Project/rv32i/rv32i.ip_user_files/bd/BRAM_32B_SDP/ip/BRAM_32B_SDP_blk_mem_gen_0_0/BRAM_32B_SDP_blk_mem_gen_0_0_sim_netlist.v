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
Qth3kssmpRemWs93xyFWQ7vPFomqKgOMBb9em4dwKdt2v7vDy37d1MSOvxp7DBUEqDNvTIE+YBiT
g0VQ8FoeAODLcIHEnTYXe9VhuU/qearj3/Da/76FqixUoetg7In1XE0lwcDp3QuN/PSZ7ZalRTP/
vNeFpFmyRykl54Spj6O7lKS7kAVwUJ73SgHEDIwaTtOdjquuSnnBf0CxW78XZ5gpNnx/bBH/YzgM
GzBry0tpvHEtR6UEW9l0GIRb/ZSaVZQSOgRx8oXxpQrmnDvEzsmhj8010yXJv0KwS0BVIC7YnOPX
9Djs4ngs+02qA7K/Qc+WqAkuf8Lo9Mh4hzkuvtbgJvpXTjrTchHJIbQTv1q4rO84Q/5+uQfFlOiy
Z0h2g7bvXSYw0kjjFhzoABKHCFEv5PADy/wcNAoGtBm1FmPF3l7cScqs4QXe1WpSl/qZm+Zzb7Jv
5ITlGrFGFFT73/D5nCCZN7GSjybsxd29CgiZ2cq9nNw6Esq6U1yoOvvIt+XlR8WZ+IjO0/UPzz5S
pNlS9W+JeRIUhbJSSxFLYbgGjfzsF/hPA1CiQgbMNiR8iI1Z+rYgOdG1KcfqDbcne/ideGEm923R
rKD1MrAfrh4jx1e54hu8Ob/dST6SeTyC6GYQWoQ/uIK3AurY9quZYv+QsyiILIzKSgjTfylqippK
IZ5Qs5eiI3mf+qGxzkortcLFwzbtIXq9FqZ9uR4epwU1jc5ffs5qG6rPD8B9wg6+Yc0/f44SazmT
mV5kkKBcxu+EY6vE9FjvZtyAIiitg9DaxmVi5xwW6w32BpxKcrrtnPH3a3IhQ88fsaiETmyUxdl1
y8fAB8gL2v2Ds0W5266MhKGioLFcpk62Lo1SzsaGdNjHCG1UThs+gNRgmJ/IEd02CkGdAME8ySI7
CSnhURwp2qXtrbxsRzPmyW6RwR2h6cMHzqyG/vnALAYRJ+f5SaG1zFfjZ8sM/ldEot5ie2MyANvd
K6Z/tZXGzQNGlGlo+/0Fpp7gTJ3ikmm3e8qyWOqu0CacjWg2q10LAZ6rD87colAujwvvinB9Tg9/
dYeGCKK5/1Ex4ERMcAIrW5OueklKaDEV5pRGs3bI8ciSsJGl3QSTue5tDmKbXOu9frkaMs5VX0t3
dVqKdEDEQza/Ppd/yXUOdciXdO7WqnZNautjISXMn4Z3DeP/h6/VlMlMer466pFj6SfycBENR3c4
Ig69zTuZvL33ZutZRU/mBZniiZ6Ri44sMyOCRMTyNC+3HW9GD9hw3IX94vgmXQdH0QQLLVZ+GtBj
rPpeO7WtqydAjfexJjJipPR0RM8bo8ELKg5qlgrDX8d+92sZV2FbTkF0BH4tYyIycoTahHPWTw4n
xMhPmBGEJSaW0k4oC8q8eaxWV5ZPAU4pejFH6RBnwlp/+C//DUzqeloBVBJcOiN4u1qti/+1g55F
mwzLfG8cdnp7XqG0/S+PGFuLhTunc2VZkM9ab4phOATwpk57Bs0MaXpk9xiXuCTC93aICJTYbrsS
wB54KIaPV/bln/hxG6ysqi+ji33T9qkBOla5sJvEcZpMcVwo/SIDmgrSlMpZH+DOkkZuD74RKmo/
LMtKuHiIGe8mBFGGjBuhQCjvLmESnhAQw22V8+MiPrYLD4g4Iy0AZZFO+FB3A3q07oG1qHPZei9A
TI3oLE9UtLIYYVTUUMWCeQMC4/ACBCM55CTklR4MHOVPOJIMFUuERYDuk7gbtRYhN+c7dpb/8t4h
lnF954V+Rcc5O0Tk4hhEaPjnMm0BXJ6l624ocSNM/T4p5nkYxvGTeqt0GXia+wKEtqwV6VKLj3q2
YeCLvx/OgyzWmL0ju9BRqmqIqHuAX6SJsR2ajV0TxnlcPTTTaCEV2tpogd9L5fe4GTpVV5jvivoI
tbxhI4q43SSam2VjBT6QIwV7kxs4c2ezqIX6dA25WuyIImtmcBuN+r1oDznEQ/90Ix3jQ63AbX/g
Or78RNKg+YcCDYjh/cVwxtPbiP7n6G16R9/ZOWoNNU2BTv1un707qfSMeszL6iyI1FnnlmWy9swj
e67g7ONTrCbJf1r2nxozCmAVsNKpRq7c68hyEpJKz6l98kL1zhSrVDrBhuZOFjSr4FQp5gJdKWZg
Mj8Z9dfHzueoSq3KGqJ38KbbRo7DLyFUzHkNiLHs+Uuh3+xnW8VVlvg7N2YM2XqdBhK1ZXeDTnN4
ic/SvZ+Tw7y1BMNSAUZYBmUq7VDL89i1b/w+LL9eRh+/DQjeJxgU/jc0mJcCCCJ9v25LguNZJamX
Mq2Z/GNbNEN/6NbKVsXL/NUhghw2uVWCUrI08NoS9vwcYUWUdkbqT5w/4oL3tsb4S9FEHgfGR8Ow
HetiG3+GBFboekVLpvyWe03DV9adrjJI2MCaRZ0fRJRjF8ELUiKMUTLLIqzEPSwYcnDXz1nh0The
WKiRQEio/fOYrUIE+WkU+ZdA0SMJAVrY9sFlbidIk6UJsaWHFdFerhQKcgtXZRbhx6WUtsEyDklT
KPZ+FmbcmA1ZC9P7MyQprZpNO8SPZ0gfBbnQ4FPhG+zlD8zjQsDFdensNKqDdKQqZf9pdQPNcNRR
Kk3pc81EsUfVgO1EcgxIkXf/9yc/nUxwjDZJE64it/2HuJHMzHk5dXQz2dto6peEo14WT02EnXB+
xyX30L1x06MS08zifjc/N9Uy6VhXik4TKCagfgB9ZlqlRFxtVSGvqnGeUDBV4c6jXENbzim0I3A5
sFdZgDFoJK1BomLZ3nMeuvRT6nrB79e5f0mhLDIhEVyt6ENYEdfxluvtgQsRNk14aQfGKP00sdDz
H7ioo2kh2Pqylg5gDNW6NABZ8wQMVWE18aVix2t68eGWWSGVlWDh22qns9ipRolhJgB2Y/aoKJLZ
aFOdmEryc7o2FRengLW59nqAPdq4SENeCQiWhJZXwSNj35tGxZ3AF73kG3pLKSq9+3IUW2+gtQVe
PVB5JFdhDSr2VwaSNHG1s6MRw6ygfwGfPvZ5vVSTbqx0eSGQhtRZm6scFjqAXKPkd9EDGn+lXfyy
DkqUzk4tsEnTEbcA7+PQQVl+d5+9oueSAE8HFjyXzBheKgkbkDBsHHFAtDlh7wv7lxr1bkNMeSyd
urMe4FN11qb28NVXhF4rWEf57ynhyYAURHOPDfXKwXWA5FuAznpODuIBgzMuFe64CNPNLzfFAvzn
2pki3fQzhV4LPm1M6QxKkMEowSOM34Eb0L3Nh1XcC+axa2FXv4MHOFQ3SSIdpwVtOdg86FhLicMU
8wPwPOXJu6EfnxuXJ56hPLEiO3fGx5qqjd+APzAv0ALaYjyKkcQYOJogtTeWs/GxJrltlW0Peqic
MIlaMbSg3SsDvwfJ8UXawrTmjNEsIlz/Kuii51LGbg+M/BcKNbN1l0xJzDBsEubUhI24Zx40qQGb
3TAgiP5ZIEW5BUzZhd017T1OvAYJZ16WPgXOQSkyBRA7xCn/uttCEzq6kZzjhkBUWYhw3ctvJOJU
aWmdekGK9JySj1rdFkR3qT6hs9AsGmcsWnY/emG5UcmYKKpfTDbXrcRNGaBdg7+DGjmN2gP8nFfj
53jFuXejmDfSdzFe64uJ3Sp+psk8yqpgtJ+T+SD14lgEbG7M6Bb+6VM+EPhJ2yZ4j2qQeeibmbey
vTfpnA4DfZjmX9h+t2qSp8unXzE9qt30d73hH/vhjcZmrWLLEx14WfT1oPbtdhvP0QTQ8mi0GUUb
WRbYr3PUNrfm317hvL1sAMjolvhFwi48d23oY+6cdtMfq0HqzzPliyJ2LXMOcV9lZO+QGuLNXo+x
TB+CeqFaP5VUMVldbSjjG5Y8TfWjRfu5FTKnyTWBE/v33MJOiz2vjK5L3CD1pJWdXKDbSE5vDQwT
vjRr14uRiew+36EG7a78h9AxvlrqK8xCrpCSjUn3mljPlMo6cOQWfJZeIUGe2utzdK25RDXLP2aW
9RW18ndVSzSLpXpK+dmK8kvq8xyOKItL8fK9eHTCbAEZGOOiWW2uX2JHdX1+bZd/5tYVpgCmdsRT
/u6aA0FVebkK+VKIg5j+9kHzVRWvbnxaS8oZxpoDBFXjBpSSCBs0R42z63VTlUteGIRd2Zo8sSY6
SRdqfX28By8ugprdWlTd4KW2U1MOKFEpGrqXcp9+F9O0o1/QecuA+9xj4kiSwa9tS5/numWsav4Q
/lDf8ON96BPDZQ7ihSl3jR/b1vS2TlGmY3Ij5sh/0KWdD58C5gaBgUeEwjxpAihNi+i12hYGNbxb
rh1Lk3mJwZQYQa8IM2EIFgQcSW9Qxyx161uw5Q1wbYF40V88z9JD/lZKSROP2LfpY4PAOW5lT44f
zsp64oCaGzlfpawYsAB7YPPk5P/W3wMXoJmRMkCm4R69iu3005l95kCHttVoOJkgAfOMjRmCfPMH
LOAXCSMbXLLnnD3NvWuTPhYyfpidZE0YvfDt/RTxHhQA5djlD3hVTnKIHWvynqUmaIfU1IY7kRvV
DVnnuKG9rNke8zbl2ABseHR4etnQvAaC0L+v1bzEoH9SZQknrD1Qgz2S4E0l4zqK3j2dPvdAPHEI
NiXNxjg28RWD5a2ouDISE+4Mu4nWwUBBUusKDTBMK6uoDIWQ6grjUuKAX4b/a/U99b1zWf6IKXa7
aIU8KW6N0cpQDOHEjPNdyl8TqeZjM5lMsHA9f7r3VdMXGdxZ7etNkr0od3MM7slnM8ZcOPezTBzc
zIJrSkYCS28QgkfBq/FJFBBSmyN61/NJRxWLb+OER+bC3RcC9nghZdmDRpIexcGxc6Jvw4CiKafz
L3oEYMjU0bXBgbrUqmS3FszAJTPD6CwDzL9kyOPMLNK/rtb8VV4t0zT+FebRae/VJCLkyZoXyp3b
aTmV1IqucMW277anaCYix/5IUfBsdNnyCCqOZKVu8G9MfKaJ3KqGR1yGcpb3j8dXvG5cUkQAebwt
pVqrxVfoXTKG2hy/yPrOi0DG0EiNbc1g1MaBeEYRf4Y1PjOJUeOpouDGF0TDWlDcMnpAT+qcIA29
dBMXfTX+ZK68Nwl1ZpFgOg0x62Jf7yGEfhDM7wxd6ql3IzNXTZgQpPuNmWM1hT0FtIR+2wuIr4w3
QA/LQtZ6U7o6YxB8l8JQGPuZzSnFIqZsK5af/bJ2R57CLQ/RR4cJ+jemb+xK0pQ4I0YuHNE1Ij3/
7JIE5zG+s9axWtZd1KIqNS7HhL9kpbPVjYlaxeFg86F3xSmGLh5MrswDi1lsTJyptXDaXKZr8Jtd
W9TNvgf1hbAdQJxjmpjYs/zBY43xhAjOqUzxLzuvmYwV3KiCGPwRuZqbPahWlFj2NnPuQ7337AhY
EjxFFdGSuyihI38Ognr4oHHrYPqpYA5rkBzLbwBVV0+23DvvAsA1Jl99oG8Dl7cwlQl3ZsQEt+FI
4vGuYNXbD0Yi1MJxlFZSj69HDrdlddfSifS4kkugaVEkJ5HzbNlVZC5EcD6iveGt3/31Jci+Vnfu
PwPSX/RzQkl+O87P6VuFWbqizrDYr4AQAN0LG+3ftBon25qPbb6dmGK5YnWMYMX/BQ1eWhSC0hHz
PdZ7Gx4x6SBzR43U/YnX+9yshQ/32o1yKGA1nP838UN/xJ+/fEDD32XMrb+Ufz9yd+ganCSHaoSF
rVRitqi1ziI2S4A2wrBM1psyA/FG7M4pB5DrMCM3FKyL8jEiblwDSkUrp2HQOjI6yqWjTyOj3YuF
A0tjolM3p9gZnNq6yW+WyLV12KZL6gocIYHOqK0u3dHeclZgOKvSGg0n7+7SYJVxUl3J5UTz5cu5
TedZWTlsBacw09AS8fjLYg+RNWGG/3V69pFvLsWquL1pZhcxF3QqBgWwsdBWxSlYKnrbuIZ4KCMe
p+gmR+Mv+7W0oRU4ooBvQN6ZrNFsywYqh4JRq009ifMlJ9q3Fy2K6B8H3W+15B2lAwB5j3ns5Hhm
rchg4qnhekWd8d5nPsQIL+Bold/+p2e1+UjxYP8VXfKvUkLXxnb4UMYUt+gWqNHBZX6IJRo15alr
cPE0WoClhJH8HNeENUNdaNtS6fw026f8HpufWgK5BE2pRxWpgpSPnUcwZWKCDKN1OFC2/vbMzKed
tcz3eOkBymeU8cz1W/Uog021/7ygfZCWf1i2c5FwaZmuZYIzsaixo9eAXFpJiuwqPYhnJMm1fTh3
lOSG1ewD4S6+EiKlxo41IK0YflMe9+8UX8haPZ3ybMAmdRLPYSKcdfMtdWo6Rms4wIX/ZZjS9HQz
KAvANNxApBWUHAEbdNyeCTsyiTxu6fABVVqCGAieY5DwVPyWx5CyPuiFvsgg3l+RZJ5i5Thqtdt2
+2a+v1vV9rvbK/VBfF4XbtXu1GcvcLKybCKbti6rq8dVtEX1OMtZXQBeQGjnIlQBh2cIqXbqeqMP
NiHmMEagw+ydC/IHayStChihbCa7seWng9MeO0y8T/kyE53EoKBHPmhoBVJfIyEEJh4cTAqzao0h
TWhJxUeP4LQrys7TcTdFT2TzmDE8NzfHA7Nf37WP35u68Hue0f9TzDhcvoNfrs0Xe7XHa4JvIHpy
SXGaNQpRW6TJzQfISrej5LQAiCCzg36c7f5LD/uvYBfHbi26qc1bVxdDRTHebUA/IOdS7mJaaLE5
bVOTT4dax/pskAkcKYmZc39rEV3MdAMw9H82grJo0ua3h4Lmn5ucDlIv9xoU7yLRohZbpjFvGv1d
kTCQnG2C+Z8KfIaYs0xLOMYFzH6cERT7TIcBM8qTJm+Tw42pQko+JQWn4+4ELsHKgdzn/phyXEnA
p+FeCSKUyfWA5O1gCD1v/ClIu3jWOP9eSf7jNQUyHFXXQ2X0kgtRamau9v69K755xqEHJ25K3PEk
7oUjTeUGo3gQSdbqQF375hBRgHOUrOJ6kMIUSBdMSAZPQ6jwGCYHHZGdrQIzCwGFMYRclHJ+5x1U
H08cRVbSwrk+TNQ0IVR6TQSNwyPFWJ7ao96Kr2FmtNYHb4yKQNrybpAdbSrxW/8XWlXR/EfvBfsa
c8/fr5z2S5yD6SI6FLhGdO5kR6h9z2tiz7pB1trvgNNk8AcF0QwC6iv3R5LOJwxucXk/41kIwyv7
tXrmgMsWqcpbZScVW0c8tKUPRTQHuAKg5uBxff5yeghXh/CAkh8kGZLZs8jbwYAEA5eo8JKakfPh
VU5HUEFzAzI3uc6hwfC4m2kctI9fmdV8yJ86EvPv+mQniRoJ/v8SuIFKH5oV3iPE9K7amsBXzZ9z
zOQ8plPMZY9OOM1LuzQbnj5U1G7koALa1yTp5g1h4aHAQ5yJ2fWppd8k07tPryJSa8vkiQcDF+yY
3o1mu2rfn0V0suRf2YH3uBfhae2Vp0K0vETmrBrJXzCuqRZO3+emcGg5AEg5YDIdoyuczozx8N60
0KWGpywX8hf9JPgQ3YRD40hCg17NoViEvHg87ldtREiAgxW2pUiReS34oCIIXa5ndmKcxcB+5668
IrbCpamuXe55FI4iXGSvmLinsGZ2/JJS48zE9sN4vCb1nSNX+6aB3Jox5ImEiTxXdbG1g+OSAeJT
RO0irJcKfTNhAm8Ijr0tOojZBLmz2gLDtlJFFTZlzLmeiBhiqv6bwl6MRbV1MFJWmveC6zK2P30w
6f/YutyF4f6nn5xNJAUmKF4btGTVAmBix5BKdWAYYHNLDyCZ+h+d1jhvNPaBQCXGIT7l4ALRQA6h
v+lEMgjJJr4dDFpr2ZFBkkUcdOvoKUh3minHqVgfYc301dhZNie7LnMqi8EUgmJWgQ9xmiJ9Aiug
XVhkFmdlXsQQwQrKmyzTObtHwRYlrT7+14qIGSvzH1Tdc0MI7YVbPeQ1Z9SyjmWyVSIctpREqls5
9ZMXlbHLgdp+quv748usOswaIkw1Cynzcr5z/AHeARaGYMtdc2syE+VKh91dh/Hil4qKf+JUgWx4
i4aSsvy+54mrkvCpWzhyVFYcO/ESEZXEZtAcA3eAZHZ7k+mLrKWmG+MCCCjtaRMhbJTL57macm2N
wqZa+o5rIF8TYMMSgrQ2jpOap4nXxv9rKcyYkVdBkJPYR9op3TqTmlhLImOzna68yn+Y+AAH37BI
SDCIgtffmyQQUZ7uEZ1ETTVOeEPC6HaH1EjesyVjhTqlNQQdYBGJf21mHHdMgf6KJ/YrfMSFzai3
Enwxxaq3YYmcmldoIdOeOI8osP47q4+a3QAFU2ipXNsPRu9tGqP7RqWduV5jHL8OrxCvmuFhHJcD
nUCVg+DaTkeVCVfVhyJd+Lp/0a+LAOFDaMUR8ZA1iI6GToK1X1KxyVdkPbYc9xb7bHejbNW8hXJE
V+aiUHSL5jc5TDresN8qjM0QCjip7/EaFjTM0mvYWXlbYnLBhzlO0NIgYFZkMoGR0O+v0N+uesru
QmeMuLSpsZjYa+/jPOazRPdKDwkX3P/5ZwsdJ7GIdCUfiJ8q9ZRNwX4+IKP1M6lDXxXSFTEzINJt
Cft9CUTHslUTxAFqHR2zM4ii4v7s4gV14fSU/mbUqRA81C6nrWvu0QKYQ+ZaUqrD1A5vaeHAgnIR
tkQU4UEluvNkL0ZXq4Jvs52gxjlDSVKGM3qAZTjSg1RctIOJlWAAc2WHHZffHt3gMrgO3NzDJ8Qx
n2KVnw5CLobk2X/CR0fnIvhng430lsaQE6sWnMqr/m7RUirW0JHRQWSc0oZdJLeBeLkogxOxEWB+
OrYansCEFjXM7NmdVIEwJffRRLf+Xh7jfWC50adzPmoob4bRE5JEqqb5zyCBj1LjQv/G2qZBy2Iy
MbLuIEnlQvIE56+fBEA7skUtHCKmq7AAYP+vyjj+DhSeJeUQHQJDh5CtFDmmoc7JStTDd+xIStjp
evSTG1QH7eS7biI4r2qJ8odludsa/d3BVcd/v5/e3H125uJT7JJDovA9dVzo7bWT4HPKZSIZ+2KB
Ynysr1qT/scS17d2rwe+78VoPVqr3+xONUKycCnNQ9LFy7lcUIl2mKfrHUhC5kcrNnxaZWDhalA5
pXuV4nZEZatkD4121dczIOxMuqKRRNYWrFw30zlXVZsnfuFzcvq6kXLUOYfsVLLiwrz1vTicv/Xh
YlbLwTUsM70QNAtVP6z8oWCBD1tQmrh+khdW4nYME5G8ZT+a1/O3tZMybHYXxhgUzuaQ/FpD802S
oh1JRp6mdwol+fSZVnYy5feNW4DGyqH0NY5f447PmFImHPpBgugJtLI6Eg/7e2iNnaPiSPvlR9U+
LtSJdh4La7LZ3Qvbu+S3koWhonj46DOhwTFzDWB+naAbCfFoK6ZmFZyCaZxWR5XiIqCFOTD5pnDG
C+oytATcOZ8TF7oyM9PeA4aeaqsTkSlC1oTSrajot9UKs5UtFvvB7AqtvRKolfmPRPpx62Ya2GGI
A3pMXg+TSoUJ3c6L/weGslUaDvPOQ/DrWhfQNqTxtvaWQzgKbjprfcoUZtRNqbIy1hxfuYf55zpf
imVT4RPvSBX/9EZb6h+3qOeDJoxxMI59W4XTYHyhCpC08i8xXe8BYpHPN8bJIcmRxQJshSsrzxMW
7WZGShh0Ou8yXMA5fEPc+wnkjE8NXb0l9ZuYwEF5UMIC/8hlW0BqipVL8jlSuF7TbhzuhaVZ0Tfr
zfTq0C+lfWHh6RtyIhU106Iiv7k0HPRLiJgJ31GTBlTcikQZj7P2oE9OncvMDQalHCdYJjVeuXym
u98SEyaVJ/Lkw3JfJ2n9cAZO1K9e7Sb42crleMLXSgopDXbnT7kpYofY9waiR9sJbC4YE90WDUUm
IFPQk/DmeEGLaOhYfIViS1+DhWC4rCXgtjFkJH3XIPhX0sj0/UOwprdwbJgcEpS2JC8mDPvBTK0M
vtuUnLb1PgI26MS7fZk+f3itmAKs1FrzjQ1NwheMjtCvoT83XreOGXJ6tXq1zLuEL7QSpPMJqh5I
mwMjUdSzBhhCQSJh2chh24A2rg+vBNcxp3TA6CjcA83eZhn+Q/zeowaEq2s8u9nBaozU5Ljja+6i
mJQNxgIaKU5yZiHNuUPoKXDfZjy8qdOSnwmBEpEF9CehP2+tYiYNccgv6TZllUP+VNlwQsZ3q0o3
qXD/3/OgBY86j1PjTkR+YJESeeXVL1DEltP//kfFxbIv3G5jaJ0m/1Q1lsveni2xJrpSthh2EG+r
CqYZ9RTba5yUfcF4amivxaV6Lm01O9ms/FrZ5DG5RdDN94ybzQ+92GkIT6Hyxglx7rsczhrbQSTM
89HM+hv0RGzWxnMH2ZucMb9QEhIzRxaqyF/HIQ359nF8pJbPO2qsrtjKBMZN4EwNvqoBw329hqAD
UsOWBNL8N6/9KwAxTpDkFPQ63WSW44+oOGrJJYqvLJRWA5NKOZ7sBm4K0ZuPTMnvVryi0b8U4ylF
uN5DxKtS0DHc0rOlfl725MXOqQUFWntXqWhhRAq1JR/KaM+Z5tI+urOf+oza/RV6UXTkculVkTZ9
sZS0PJZafRytbcU6YGlSQoQuv/nUGitKjeqgywf2TlaOZFXnFqSXy3dBY2PumBciHU7FjscAtrKO
O9S59RL8Cva22RRKJlkyKkAM+vnQpMLW8B8/ecfwpWqW831ZZLvz00iSg7hsE27z/RAQ8Eos6Ji2
HRcwgWiejDddjGZpG/Rd9XzrUhvzkUYeGFE8oC1KSWC/2i/wtzhxj8giWNa+qKSJunGpUjDVDpRg
vomfY3VXadIbPt+ZWRZGo4sVvPUc1/5AqHt8ZFOCJF9ZzqKAwxuqjPsKhCjuoKvAh//+/M9t5qGE
6Cr4EsYRnzR2sQsS2nDDpoFig68YvI6TDTPABJDMv8pivOgak+FHXJ6EySKan4XoeR3wcvWwmua9
OLB1/BKNdPVwPBCw/XHvwT7/2KmG219UfBTPimcpT9sbXzqjCraX16qPa/wGq780vwS5L74LfUC7
C21vhtSF2YHnB/OnLWhvlcP3F+ozmfgmRaVVQ3TjBqUVgGRWIwevku54x9TVR7UGrzXSvhVkh2oR
6oLOicAN0Ap1BT87ZSs8oKe5GsXOCckRbHnepvshC58WauX6cT7QjYC9sncsj4nsg5JrAqKRFM3N
ZUphyWg2Q326XSSE053r38mJcddc3OuH3/YYTCzUnctdmCW8Ubmv8Iw6qBTEg+5d0EZLtJ9jN08G
NEOUw1DKLQUvOIgfgQvAQlskWI2t0g402umOW2KzErJFkdWV5QAMevMO1CRPPfk7dIQD/Mtzj6DY
n2nrcBoNcw2GNaNQNi0DxE4imtyrb5UAklL0CXygIef/L46jyxuD4ukkkr54afMrh6t28ui9+M9X
eOsifGgS2+UsAFVqpCsZgUtg2YfXrHhXXJy2gtdTqHh/L3565ZF2ieTVAlFnQFn3G4IGEJQNeGNR
20xC9/p5tZ3MZF7bo68GiKyfB3S3Clwy8EwTmVleYlcqbxpauwYwD3BDrxkWRgFrC8j7m0wXyR5J
v+3oBuonSeuvrT+gbRb4Nc6Tq8ZP8dgOcO7wx4ickilCJakajJLWdRxYFD4MCcQF+OELdfZQwVPN
mHmUHi90eRrua2s1TeOUO0iZRW1192IIu31drCQw+C6Y9KGKNOR7b3zdYb6EH+LSAqcNNMboOWaP
Z5Vi/yczEhVUZA+3UtLRIrwG54m28NMfgcoCHUzfJeeX5cuzrbQf+a2MembbvN9T6Ub8yatwa8xW
dOj1tyLd2yuT8eUu9mXl/FZi52PW40G+i7KJkmbiz3rhTbCOU1dsdyR16BbGmZc8o6ZjUoJ5WDXX
B5JIrnWQ/3+17bZFtkmEXSrXjQhT6dZ3Hry1++ctBHX1OkhK3ecRibNC/4z6C2Fys/WGIizPJ/E/
WTkGGn/SdHg6lSiiC9u8KVNPC2qNDA5QqHgtqxZqIJLBpSDnKxTzJeg81QKsGC12cZRIBLyBLMuc
nsR/ptfyuEOGaHHF5qAMEpuITq2pQjXzsYG6Afjd3ycee30TtVi9Pp0ZuSs3Q+OkUipj2AHfJbHL
Mb8xKAgtbqDa1rYgexCRQxB0/jVzHrsJgjj6qlNt9g93eQpIbhUe2jn2StjEuK3ESYv/BaF3y3wj
eX9VBNs753G+o9GnWD5yM5pg1KXfSI4VjGiET9+1szyFi6Po6Tgsqg/Cc4IdIXV4dd/BQuv8rDUZ
ANAfrCkzU230jkfV58KEYkHJkZOKzZe0/PQHgRuqhp/pKL5jIndzcAhThwi5KiQ+O58jjebKHwTu
Cnj42zgnmKzhNFo8mqA+3y53vDWZ7GyFBLWG61gW6rp8hJ8U0lEITkiNm12srufVI/rf/ApY3FsI
QBiMr5+VuwRJ8LO+USkTNo1m/uDN/zLFQcNZ92ev2gC1UFrxZ9o/0TwKS1KvpSEjAC2yXqQxZNv5
O2dx1qKCzf1aTaeDWeOISi0saX+nob6nKFybCBiyaAf/knBHjVBqCpyokF61gJbAYbX3TWABjUPc
eSx7qDTgyC0XUUcWN3JeQdkLfYF/Xn3ROZS2mu2QhGIhCatmjbY7/STk53iP4GiO56r/ugEIGP66
9iEN1ZFCb8WLsddrr2Oo2epkkN6+dwZmImX52vdw23jUOBX5lXA3vfPi3Y/RiiyMAftZbmrdWMFJ
bUwrPfw21UNovtbsIV5BFdlNTAIs97LhGUGjJJOGdg9Bxe/e4Yg5h97I3DU4icePEH+8hsfbHQgv
6+BSTTdV0Q0NzvOrNH6w7C0uS4fLWpRojHBxeaihxMVKghan5RUJSJqwdESpxVn7stoCte4L5evf
R66Wl9TlTpu2/qDMrRkJNm6jijrhwDtZeD2dNLLnz3tO+1jzSNqAuSHymmITBO/okD8qHSZO8rUB
uVeOGsUth9+SfGMQhpuKnqSMtHH+Bimyluqd0dXOGvL8mWhS8eqqKtFVjWE/kGwL2+wItKHAr9X3
iGYSSjxwEC0Y7+ThbTp48OsdDvKdGUXhRunlYJ/PACHmM+RppVl27WY0GHVEBJLHwS3KUKfUoXjN
rkSrg9cyCnPim9wOWOFhkNU/nfHzrIzwLmK7xnIeyGSySEa6PFSYNBXYEpg374YYiqHdTuVnMeUw
rEUMxa6jiN9sqx5KDJY4bhbmrK7PrUOB8MpDrKUAK3PSvchk0zEzlZtw84Z8u34HC8mSbGkQOUgW
hhmIH141DzIF/l8NZ35S1V1n3ZWqQp8LJiNVkEexCYr1v+L3fITAr0IYqf5w/S4zGBRdaULRI5mP
riF7WjXid/HYn8FuHxQJpqCgFndmjrG3XKsdcBoaxk8UXyDPxzaJ9FqW4XYtZxdmRIy9M1l4BQoP
hyYh5z1+DS2vMIYveriK0tLqXgVv5M/fDp7ujdLdWLO0Dc+AIFuVTIvazdsrWvT6ilKfRSjfZzy+
9VOnnUqUrGyLyz32aJtgcacTokimKBY1fNv2Gc6Y2qHk/EXTjOzIgG4AVzhqVZ/e9eiJiN67ROY8
/7k6Q675v6amyKe8eJ/gOxoz+VR2KcgjbcX5LkStF2bIiOpKaL3vS22mgYkyIaxbke1uqfCxKcCG
MfP7UN9yOAIwTGF/Tpw7JfJCwbM6tgC2TJjVYkduwAbnbm8i6Q9g361Bbw1rooRXU5sWKE4G/xaM
6qnDZFCubfTB0pRrTXy+GH2nJtMsg9zch3aU8tiNR+8+K7nLzU3fxNBeJHwpq7C9XbaolrkiKQ3T
XS6/hQs5Ve6Mx6Y5Vv4L8u07sydj6b/lTk90GkprbwP6Xj/crULSkVyufBlssofC9/2GSXqCK9QH
rvtXEgERwkoob++Hcajr6ptCtWRNvoZluz3C+QxSZbDv3wTSqVPhW30nxZRuVISXqG8cDrT/dJp2
iqiNJ/P0nSa3M1AMd4TfY/PTV7TsGB6gOVAFDD1nwPzAvvew1g6j9SCz8jhpDM0pZf4ovmJ4unAJ
x/sBelicjLTIImzcUC1HILWSoR770a8XQjnExHt6uiw7Odj5DK7uTA9WmNufwn2C07ogIr/5UgGF
Tj85efEn/0/2zGGsQOnF2Zg8cDe4AE7KxFIO4hfSdg0zCVMUUe8RJ/yY7bdIt539E2FAO9l8ftvu
d+XUIeoqxPlv6BNpbZExFpJ5LHsfUlbZWxAVgUZFOrHFaGqzgnsppgIAAqV6rMP6lvrxNAQe0Vlw
g/OxY21fkFzqol5rR8g1YjtDZ/jh0RiYLcq9Jd1fN8LUWUwXZQIys7/EFZj3tnFmKrdEFBfIk1HH
ojWq+dkCNxZQuyAhvw5F9aQrozsZSrB6g6f4OGkKlcwFBatXak48bXB9j/Y3cSpFJpIpXkfMRrqL
vxaOH0k47C9Zsw/SrUzfdC/EAjr7K7w/tepahwC3PLQbo8co3hGC0B9RkNFfKfQz0imTyhQRMsAj
FVYlooXMoXe6wZEgMu0zUqnjNsGkSRUu1F1A80LbQ70/oLZtPmAxr78kalu+N7QA2LiLdKAQxfAl
wJnCNFU75wPovsbcrsaVTRo6IrY+dbxgk+2PKHU9VzGP8SjGrhOLG/AE4XjNBrTT3/WG7CDFEiJd
h+E70MvBCGtaSr+HnJLWeumLvyOMnAyM5lQ4rVANT8P5fv0gafgypatpIzCjRKZpbB3YYUp2yiE2
olML3K3SBNIxHQIAs9EY+r6rNkJMmdwwv8tUJ+hqZ+Dz9NB2q/Anrlie+22eu4HYEwwhDuFqf1dY
lz+lmZwCm1QmXyMxzKlzOULQ734qDBsfX3iHJ/m/de9lpu0PubtHacF4WYdXXO443WEDJzC2DTBZ
kD3PmkeSQ9iB4ummfuYas4svJCmXUdZ4AnYLUaBVMg65vxTD00py7vOOHKc686wBF7Hh4tcoMGOo
xtdZpO4wvlR8GZ+VQFud98a2GOk3XbTZXaTz1CZLxLXp4sOFdWKlxjbheIhSfL5fJmrlebhRjrlM
5VcqS2fcgGQuh+sGMp0Ay3zeWeYXuX0CdBlBAoPFosLDagV4IFEIuZkUfIPk9HQLYCs+spgopMv5
fUh3rYyL7IhMjgPvDxIyQih/azykVlv95IhxoBNrwmgv34pUjGACx2gQrfrWo8A6Zd4HSi+xCxEX
ku2iBxJlier8W3NvlBPLclTmA5o/9uC96WlIH+5bJNM7oWc1J2T0fT+SNDxO1Ky0J0sAVip512u4
AsxujYFAbAicGGv49Q5pRwHOGURELnr6fUFA3xlMYKMOC0InyHKrTlYkqpBtl43pBMiM6BaU7oVh
HRBJ3HjtFc1kmwfeuRT/H2CyzVtt0EeFpoXMo6WII88afMIyJH31jIsMYuoEZWfJVkhIAaLLHsHA
wmtFQ8mAIs6Xzl/7zF933IhAEtIzmlw+tfWELv0oRsxpoTVnye1SnLRKeoia7QHl2QIz+WQOCQ4h
r15UsUMZpFCtQKpSQWfZNkaKbj1rrBqE8XwYgxNOtwkvDBQ+TSIcswemJZLyBO1I7K6bYOtmeVBz
vUcLsa1mVkKyu6oLqKH/6W856MBQ+kFKF1TyM2UQV8rRVFqV1RlCtyZtKMQqRp7VF7XxK5QFER4i
jOCT7Pj3QAKbYPfB3lekLrh5dM9nanq0gY8GeTh7AZPWXB2+cLnM9XatqemmkgldGM84KgEuYLdP
hUZipRETGy+2rfssu7yilGYedr4qNiKe5GsDSgdsxI2W8wtJGaIHovLqc8/s1c5lTtfw3OiqGJxa
iE87Q46pyBJPQIohyAMLJzYWulEfAARuI2w3QLKDxE4L84neXqXCCysifvNXNysPWx6nlawsLWSG
LjWgB49aAxqPRIjAnku7nvm2Vov4TlC2I2FLdpUGmzd2lvgARUYRYDGgWd/FPZlzNmCuMd/kvcYv
BUlaXKm90DtknCNns+7XZfkuBhGEg85cqyTRIcG0pbehrms5+VyfvqqOFD0Sz+DqiFAaIIIgw0cH
N9BK8NIoSsQ26ktfisg+On5dgwBpYbRodBJb4hzldnrLkt75EIeYBo0BpeNe89ONesYtxn4Q+75X
daYbJcpJmvSVxXqkrVIfERM3RrCmHhHtCmHrnJN/7au+0gUYXMxwYLLT93odwLqNg8Kj4yHJFm6I
9mbw2rYfkpnSK+2FMCY8lNDF6yCoTfXN3arJhz0j7aPE/oK2sypOqy8g0833naoWe1VGHNhlEjJB
FBmtkrW4neSpQTKfUrsrBjBEjXmJgOwuHmQHrVqsOICGbcrm0UpXKJmUExWHT9TV+WWCOr+cW5vA
5w3d3yQThb6K+YaWJNZ2XlPodq50tGWHQWxyTCxXqIu940iYhp7Y+lo/HH8X88njwo1TBdrwEAu2
NENeSKgcIfcIWoG++LAVONttEj5D+TDzExCYwBC9qasI/eO7rrt+MHhBHFQnLdnx2tCX6KOJpvTB
7HNddP61h7i7Nz5CzHnq5CL0OUrOAM+EEM6T2Ayo6EANDe09SCIuPPZOIQVljzGkf8N5NQXS+nfJ
QbOIfvNvJ1m9FfTyNu5gP5UOlJinv18sumXSnja0pXDc14zcLIyIjAyNbvswWRmpNVCxWXS56XLV
ZQ273Cc42hJNI8+Orpcq0rY4ePatF7CD8SwZqPIhzf4Tn0R/f7E/g9pU0rgSfpkCoT2pud4czrxJ
+oPq1Sk9Tlr4fOLkM27MPsIcBJjaOJXduBubkiVqxyuejoHcyEGwyOHKZj2zsiQ+iNrQTRmy2pfj
fT35Wpz5f6ESt8b58s03pspAP7q0RNo777+NY2Ub6vAbtK68eGn3/GPU0xhXlBAwk9vhq6ff/oAT
AfPV0mDlKmUpAcnm9RACiLvGMcNx15ahiMekEuwiHIbEXnOnykjnIXJ3rwWwl+N8kgox+rUSEKpq
PjuXxChApCN3nKoDisKY7fFFkjDXKv5NjS6bWkoCOGl5/pVCzSxB82yvOa7sbWCcdf1Og3LwgoPX
V+nNxgV4jSi5P/wQo6SZlKe7lPs3rrGFSncB6sH48uonU9/uPiqeBryQwErIoMNgi+n25fiyqOOi
nAsTLGXbEMFKUcMVxOqnp2WFihsS4ej80HdzDsGwMTRNyxzSiAFuB2h8dD+CPmZWpYalkD+9i1/Z
NRJOONTsENUHnhNDGCN1NMjHZOlh+S5O2RGQXmp35r7fqXSosw6ChbYISmfI1l5S2zO8oNk1584H
Sbxmt6vyVDrbND8lPmQOZ5Z/6g81fHiHRcfxISEfwja8d4TChudtGTqFW1rmwHKNBpz6YYJcWs+O
X4IvGZG9/6TeMxiEVGB60MM4OxXi41ZSr/NbbK9508mIFVaaHGT+oVy4SXoo+Z0zoyh6/lqIYULO
tV9BFmi4xj+HLdV2M8THhEzozEltWeEi2ddK0YyCd+DP7lTnGG4uyFffWhRzrGMYg3lCSFWf4WF0
gL72HqQDi0hfFTZUHgT4fLvZzi0NiTpGY36MkJpejNIT+CZ4i5nTyuLIaKX5WjqupOJ8Woy/qGmA
eXrNSgyA8WGGRpECqeatgMXaCAIMuFrkljQEVwv5FZOMJLWIG8mswyPiBVlsP1bkNhQ2bjGFR8v/
wVNE7NWefqMkkychFw1xTMD0RFidizFDcySdwfD+UCtNEDQMQzgwA7mX60ImUeU459FI91C61JU4
vDYFDhC8+VFVemgwuA22wolANZITR+rdvg8E7hnJC8E8H/FM0heQOZ6QlF6913nfDTWmqFRa+jAP
kdDMvRnUKWcYpRqVkgaMTNGX09dBtwJtQZZM6uof7Z82st1xpJqEc6qH0OHLF0O+oXUmZNSVYnHL
BKoFd5oCUM1sPgiPIRVPA8EH5EdxA5y5oLyoFI1mEv0Qr/vmGCJKyPw0u+QS904CWXSrqHeMlRdB
LYOu41DKC+E1tc+7wwqRzxHh6bRXWl2ulf3WUSFU+IdHVyUOvcdnBaou2exBepShi1CqCSNDLid8
FuCKsh+vCT18x/eEvkbUg4AK1N/pxRpccSJAQhFCQpsLfy8ydOyCknZ9x0aPLYm3ChLOl9PgHxIL
DWs9i/I0qPfvZu4fn1v0ulCYyYYt6GD2uD8bBCRTs6Wqyp0tqZlfrJbfEXpi2NZX27fqk65X7OW0
9UHjNMAekQaS6/sZ9zsgfe6vHjB7huhY5BaRuiCnEnFVwN0dlqxVSxE1889c/ZqlEjgJCZqiC+yf
tFX7K6IjrEhMlnwXNAbikle8Szs5SxfYSonCTQmzucTPLWNtmIz4GhGlRrWzwXGnPT56QXArCRtH
5UyrO8FB6E/0fTMbpFnQOmj6zaMwmD2gBJKSu+5yNbRJ6kBfRCPmu3qPmhQI80acQ4+EJH5EYzAY
ZArRkj3QLj7MFSJvb4fFz5eTm94RGBxlNfoBacU7SQdSnAp4kjBaVfj/cMpUwZ7jXft6yIZfMP3G
qPGV6oaHoiO4+2AeIjtCjAcEL4M0DgsVBJExb9570cnYpypfoWEByRjIAhOH3OHhcftpqSZBYNPg
Qnf/03Jw1SzxBNTxR8MTjxNjq1N3Q8zz9hKznQl+yYEKuBV6dYc3axqdM6+24Qk3TGiF0RR2sqEC
rgFwxJKrwTu9dPbJanhVU9ypZ3NJgz39xxpKK94HpXD51fwwAhCVDyKx1OEomSvHiEWXsE0H4gv1
GYKW++YqK12j3RUswlBkJUKumSXY/Ta5ub5Z4iIZqvoEQT/rr8YvsKo5P2NTQwHpiMo4i1du3Daq
mnqyecZrERVt/lQXtvqJapBlQJ7kAB7W0E0SGiIH5uEYMxL57nUG1exV+VQSNZQtEeEppVufQIbY
Q3E3Rf+A0aac2Y64eAcrabtCTE69ig/VVA94VwCb5yb+kROjcHUC8Fv9ggDHas9mrUEDOj3hm+Wh
T8vOGJbL7DszG5z54FZcLMuOSm348oMmklHcM33uUkVsI46HSujnnNdQsHl6/vdQdqpToSILjNQQ
qeiPxesNmpUp3+5e3UhcTTCkI7jHUHD026XcEoFIuied5DZNW1uG917tHkE8p+1G8A1yaHRqbIIc
brUUmjL6GXfWGnKRMo2MhaKr6RhZSR+OdDlfHgyxaCgOCDmgZCsWZ+hHeQ10A0cZV7dpEKU0MQDF
p7rkuJ0u/W1whFZTiaZ9he+63W2emg4/DW5e3SMnvm9jeXtncKewG7l2kCEpCEUSHvcC/msVk5CG
eLA/MnClSQqiUlqIgUFz6VY1TXj98Eb/IhmKJVonMv5PP8GtNRXJ+tL/C59Z98W0ayMsL5JNW3vu
+dplenv4QmMU12fyDWNvy/GVGUclK8uk2tCZ6BfYu+Vu5lro4AlGvgFow7A5wDhC6K2jO7HPZr8L
asZINPksWOqWyuqwVbY0vEthcTGrPNHtV3ZJtr9lhKAyEl871xX6XZMMXJZIWE+eqlx49AMLL+cn
K0C5spjSiqt+W9ur2ctF3qU5cFR0MuBY5yurjhPyKZOiF+OaPpwdAsj/WhZPggdDIL0px3T8JKqz
cMryuMRVLnbe/hjOnLpDmWD/egQa+TWeeYt8zj7zDA6tsbP/kCuWOu9C8DwKGIKFOcynkA7lU7wS
fDTwZ/rpq7IQTYhBe1SYV2nxcmDcDywU8bVG9pVXAPYfNv5VBraAhiQwjIKXpg7q367J1cS3GF9g
XZw/gc1T2i7s4O49MSzCmAvsgjmII0FIy3WcaKj8b4qyAZC7AHCLzIp25KtCF2YCKKNbsAKDzwDm
GLyHrkNC4Xk2PlCLk4rvAnZj2pcJupkwYeCNaG1ZIa6cadxzbC7iVf/cyoL62o9dj47CGrkI+4vR
1jM3A1phaNFvJOzWN8yw7olONLB6Q4BZJji938WdWMldIn5J9SleobfD3mxboB8eHW59wDe0pXp3
uMMiABC6AztODXiexgIJ6j/VGfGSBD9vuVZYoMaL2ivNSz/GOz9PoMiIV7F8ZcZhZmbf7C3/mZMM
WNJVhBc09K7Y32CvnEEwjOF5qGFW32f5Tsr79f3ymPlhPgUfAJh1K15RaEwORvn1oAbxz9FNANzE
8D/27+jQT/HnXH48MNdg+Q2h0IX2emufM9TZGke35rWDUfx/aq+b4YBNzzQho+8q3Euvp//uKJYz
K8MaRoDpNN9JRvPL9dwswk9ZegLH1wSzTVoPTLkqk+Ee4loo9K4jIwQGX3bQ26vl8BVgKwli+ugs
OqpI6QtjSeogBNEBwvG3lVKvy1vqvmqJpG1syyZFzjQkmmDH3gqEGY3zV3NCnuxTdsnyEB2jviG3
ZmOm6rR5Gqj27KsVLWSXmt5ZhUWWeTsTV0+Mgy8n2HDeTiusCJ/L6AWSaWLX0DW71acS1Enjqi+f
OJUL6NQhVP0OtDsvd77gfFwz0aC5hZoy6H/8Sm4K1EAM+dfp8On0ebhkL0wIGwSiwRONOCpgtN6I
rxVzA37qSHVxI4z97ByDAuQ8bfYoCAQXZaIIAM3gKbLrGDAyW92LCF9V7Z2jDqE6O+xkuoST54l6
Kyy8yvaPmKhX3735cJg2U7fesC888KdBGbOh4n7Kdp51WGLZyWfk32N7zyugAvxb9oNSVPbnNL2A
G3TfnhY3CTxqIfuFp7f9OhfODggg62iEO0iVtgXYifSU/f4kdi/q/uJQ7v9Tx9SlJMBooG3OZoyi
yFMnpahLm3b1VjCklmW0cbBP5p9277q2cwoDK4WQjykolfyYKyLrkErEKEzflZFFImHFqos9t+y6
hD4ugzJaeb7UY4vqCF8UOWns+2ch3yQeraznxAxg3LAd6f94bU5YuQFbuRANKDuSJmPQm7BBwqpB
P6rxhgWa/EfOY3SoqDZRMfsslVqbSMGCwB6q6AVMU9m84c0TJTd+6yyLmKNPO7nDag9d/QvCKlWO
pIbePn4gqzlEdxRChKOB5w6GA3UzZs555d1Ro2nU4XVxOGJQPA8FW9xoFzaLl7ECtA7Dwi3UOueG
VI5Ne/1J78oJDDwL7nUrrerpFMOshImMe9dgPsh8jUESSKuu+n9NFEKEOPSLERJ2F03CtbIUSYLz
w32SdJD/FzqutFd68308F5jhWgREiCQ4xI+9xKKDQDdJx/J0YvkuyBW1mac03BrHdLdCaQgqWYoK
SKYa6XF93m/RJwEhVuXhVA2O2SrKJf9bpCPCP+kmYqBapLlS2urDpT4TsWgPseRTt6RwbJSL/AJ5
PcOBc2gGURVxzJ8lJlf6Tz8iuwJPYr1bRfXw07xmc6kt0D2KCjV8LKvCAy3Wmc0zuSLQ8c/6UW4D
weQtLsNrSxsUBoM81b2MlP+XX/SatJN9xH/P/dgqDsAss3F19lBAd2LO01RNCxXuNTuVx0p2Uwb8
Vw7rJpPjbrf88R72z2mAj223Da44l7hQ/wqNkc5JhD3vdrDFl2rqkDtYjbV+VvUaWRwQ+oBK0B5g
0JCrA1oa5+cVR/HYYnRyPFRilUjKnrzGwyv/Y1V5SRm3fyk054ENU2uWeW83BU7x6Kz4kkVmY7Mx
RQi7WHLlCJVh4obfMaOeb2zT5MkkfnFvBeJSOrBJpyrfKOdnz9FfwSGwnSCZH3XdBvLUE6gbuDyg
bhHU814c7yHniA/x7Mub+OxlccWhuyZ/9Al2fA75cg/tXpn6wFmhaQN/7YBJvoMl6KyOo2rpPvT4
LeguYW0zd6PN4NNgZ7cg/MdvNCHA+7w/SOkFVTjvw9gYPfKjLOfNIpnl1pa/up4YrAUl6z/MU1Ao
hGcvkdHzELaPMudsEW/d+A9nwoYivAkVjYU4P2kuoEHyka3ALsMZ09vBvcgLo0pkepBZzwzrwAcV
yAo4vcv1szM7j+VHQsBHiVE3UO/NuZYTRAhSbC4SV6gK6/pbg6ySuDenRcsCh1r+CJgYfpuynTiP
zRy9c7bkh9X91yfhmLt8EdXXLVOdf2db2H+vc1jG1cTRqKe0omLEjGXY4+vhmMnSCaPISSRDKvA/
svurdOngtSFZJ5LKH7ulbDiSvwUv6Uz77jJsF95KLLkiNiz2a3u2uCfXNKHrLK7hlgyO/cjGGEpH
GytPLWQNGYqgw2d8g9xwhxMkrNBu2yvCtg9KM+Z1MWoA0EELz1qewhGaegdhlSYi2kBiRDQlHOWC
F+0e++6kshE0IjBdT9vCzIR70+rqE7JB142/q5VmQ2xOwFLvn/NUi7AqsHSJAZswoOE1lGaN5dsN
19Du/x9TLBRDFqGft99m7macNHhiJNZrY8U5nPzzx9nIyNgUntJgUlLbKwhJ5hUEdT61KylFCvBJ
Kpf9t5rxqxuE5/2+w+ypGHgN4J1nSns2PVKWMwfNfVBRO7cmwIOc/nUDwc+98eubW7T4u79ABu3Z
NQeF4LRfUFNSBY3GBUmwjxhIDFLj7b8FMXRRkZhoxlEzcNqYfJccUn4SqDmUYkwdTPZQOUHBNJ2L
JKvfcT/qjZcbJWJ22xTbq5sorGIfzJ9GQHdJ4LPrmZnQ4qEl9CmK5toDP03lcPSHKu4M5WzB9R3w
SWeMgsQw3h4ZTS294WSZSy77fagPwfgu5PzkK87BagZNBJJZxNeaFa7aMfY+Ir359QycHMCxyK+j
lnP5tqJM0oTWcZV5L9MduYIOttVl7cPrgUeBlsGFz3//T2jirE+nUDk18twS22RSzpHfzY0bnE6r
tKmC35y5T6ehicSYiQ9FWudGkvJkCKR9AIpg6XOrMa7IR93skCzlyzzyS8qPHnJhu7280tg/+wcD
3MOPEJsSZLS12IMCDI4HaksoOzpJJFb0BywFTM+EOByYMoz0iFRviX4PwaMxzYCbj+3MSkPFUOii
Y0QdNVwNJDCotkxkY03hEhFE+7JBm2su9BYOBn9mUCdjdonwDu2Bf+FXdGRaXAr7dNidyQXekKs5
V6WI/4WyOouk3k/ojfgIUGOwYGk7EFtBiTtU77TJbA8KQsBTDypNapnb3xtJs1u/9xJt3m2EdLXB
vvClQWbaxhzOu3psw+d+UX+V7ie05ex+x83ggM4LN3xhoR7oF9o74m8qH1/6qAsmVtzivC4ilkhi
3Y4HgZP3a0xnYUsLmMZ43tJQQRE8pUu16TY2fsYatCvf4oGyych7RTwf1UKdV4rg/wCm070yOYXB
1N4UEttUSAjmxtKwNUryhsDPEZnPrszLvNHROFaf60vX+sheu8gexKuRUGH4xJ8SUlhYjg25XPX7
EpTV2IPsp43zRdqM5aTUtYE/hHI25TFlgZOn69qL2JfPSKs1fyEn7MCvMXGitaXDkQP0LlEQFC1r
jsvBTQgMKi7CyOwkMV5QkSaFNT/B2sQAeNaBzsBN28ZlqxINLPcCiYanNFKzlbrCNNlixM1apph1
yjqdv+EhKPoiA034VrHAwgH4TfhXWRXQtMpysQgW0xBi+BQJj36BfZAeH56Gb/ypB0gH799rBscA
fJj+iXN43rZVqbn/HXN2gb5K/Zh4P/7/t7B2lgohv8BQYUd7A0vDDhZ4VosW4L0LEc/cw+dH8VF1
3ZQxIlkcfSuk7m1uwyruBTqnJeJ0NPiPp0msqtFEIUbTARJI9zptQkO7CqXaJrj5kE8OEu2jvEK5
m8PDF3u+yTquOMC58vQWUtBOEMWaUgnoGe9cndZMVc42sciqMMSXR8/tnnlPQgl9Qt2LFf2rzv/u
zLsJgyZwGMYu1gigFJwfZxVhlv5Yjdv/auwzk5dKawl0eZeRh5MGFale5QJUMZjD4zTg22em7TJq
h5OgyZdilkQ+y6/sx+OLofwRF2Zt/0u6P1A1MstlQKIczNVJYXESR3pyWNs0wj7ox1Jmy7ddw8oF
kTYkcXk3+ltV0TyXY03uno5VrpLYhQl8i24z98dg0a8ryKAuApoFms8dxPe0rciyI0dv2BmyN6pL
gVSbpTeJPCOCfs1CO7fZ0MTP/wxAqlW76Os5oyrR/e9LUuxUFwMNET1Uhixiua2hsorrXSqHu1Bk
eNrSTo6PXRvRdgyZOaqz37Xs523f2aIXSbhI8nMpy3irwjHyIEVK1G/7N3+Bw2028AUarf+CyDim
d+8nDtV1klpQJ+IfA2lKg60t+C78/tblxxC50+Ce23ntly/unGWJdANfeBKqYiyvesz4sjJvZmNo
7ZxM9FRXiWEwcUThHYxlOPim+BuHy4vmSh9YdwM1fsHN0wqdi01YyFoDqRy6+jg5vj3u6I6a2xaV
OkKD/rHxUDoHGvVP2LeqxfpUUKUr6LtPpK8OtgIok+6BZ0RWCOndEmSkloH9tbWQL72qLxfNmnvz
9vGLh6OlsSlAOCl+8f+EwgNOzx0nd1+nE6eF6UCACsNZvh7ccqC7oGlQbjFXZL2qsZByTzI7Uy9I
7ngKXItDGhHmZCce35T6bW6g4QcqFUpGr9EKOquFY0I85FAclEsvbjod4INxP/s/pO/ksvVM4FDQ
18IzDIcMW0YZgGZ6JnLoVYlk2ShgpmWxY9cc8vrvLyHIWlv1Jtl3zjG7jGNNk7I8RaP4ixVLjnDC
B3cDh5v90AEfeCBGpgA9R72mHWblSjGDusjdO3FbrcD2kChIo6elCTus2rJookF05IUyCHDvt+0W
bGcZ95Y2ze2nIL0f5SLZWYya2wLpVbhIfZQt8IRkYHJnyw7ohbKGnngxdlTwRuhsZ32ZHZUbunJL
QlGHQXWBZS21N08vtO3KQJ/pj36Tk9eKA3szfFLqa9M45ZU+4quCHrvIj/2JK2SFdR7ROiFLf/Ds
aXD/lXeMjePIbmqm020+3/EkrIBGOxjq1ScpW2DN1nxqXdk3OF6Z4HHGXEdYZnAFp3JtMszA/qmP
RmILfjR0vdMIlZXCZH4TO7Nw45pCnpg6L+bIwA8oq0qxXin9Xraaab2s4mDrYUJ4yK60VBZbi38v
3Q23q4EMCX6F3BcTcIqE2Z6z8LQVWTxjNL1oxaobjotBjfd53aW4dbj7poZJyiTinkaY4S0G28H0
popOrOMMUmC6xG7BHRODG2LsGRCwYAiX6QJhz+cWNW6z2d3sKtUekyfFbBQnSo5pgS2GRdJ6BDUR
NrhTFBfp9iYo/f+mdMC3hb4+dnikLfqndWSaCzP6XhqxK85afxJ7rhZZlosYRToshskl8dFi2X9Y
KOD49EmHhPBDa4NcvV6yJv9ye2OQGZDJC20CQZC7JbRvOJo0QagJXHAk8NLrPcpTjRwHaCkD/OjN
A3QDb9EYCSUC/M+5RMvKMK7zjox/B81NxtrNYINbtsaFpPKPWQql6vC8LUasc4Z5nkOElc6KEBC0
1rTjZZsf812Q2bj0zTna6jKyoTtlf366S/RQYG8pGL82vfyuRNKDvGeCvmIvC/lmlyCMAKGK0Nno
VSU5gJXfHI8qGmpk2c55YvphPq04kpPx0QkCmELQuThIv0xKmfYaqJeSnunSiXSacwEcKGkyQtU6
2BfodOk0MX2No+1tFg78yHyjQVHAlcutyBm7BK4FgsRD59PdCd96pFdnlJy7RCKg1qB2xyev04Rj
zxjN6C6cjt5V40AsKeKDx8NETx7fZOeOHXETvXysidZ5A7EwPKQrDtj519fur5oMW9fNjaP2IYAD
ApAYkUj4omNGpttFtuR43CHAmQLiiINEak9PVuUrrMHYKfF8MnuzSUMKADX7eK71Z28r5PLEpfm4
9NJl+yE6vLnYCceV6I5IcyZtkZd4Arq/zD9S+RbrDwP+8VBEKWlJunYjsEyxTdCLOM0AomM3poj9
ndxlLNcR4pfJN1bofYx0SvwGh4zwHRrGRtt8hhDMYKsvFaRwXQL96ckmnarfzOfcypgvWmqmJjLJ
L9QXmu4ivFCPWfQB8EdS8DYDLiYjUTkqneRqLPTyBRjVGmweP+V8STihVm3bPoRaK7y8ziK8AcXA
GCm4yJYrwtWaKObU8AKqhsc55wXk0ve27JDzaOpq9UgtV5PtmXoznsWfetX+pOIL7lsI1h2SACt3
t3rm6JAYzJDL06k+R62PumUsAWifzhJMvDAe4rRiyS+S3ie0AajK54Zo6ZGi8MzRMk6rP8fGW3oC
f2pAOby86bXedLqOmRgstDeRhLubI3tt+QV6SOrrz8GTytO9e2nhXiNwPFS7ds9toNeKxXl6MT89
spOcJLE7P5d3b00GizZGw8tMu3h+aRXREcHCiZGjYcKniZfP3eC7TVS6V03ky4hifVpAsot4O8hY
rZHeqU4Bl5leby6e9YmxF+gn5Ee5Qa/OXCTya9G5UU02cWEF7b8FZSkD7gyjefOPfbnI4ButILrg
tiy0pkck4ji7c95Gfih79pcsdwliAr4P4ZFCg9EPCPmIr0PuueuI9JRilGPnxANkinAmg6yUdGZr
wTLGVBFVP9jfZuadytpwVQKo6Elu+oVp7JDTsFjZAc+FBsm5nFMMOqCEVkXCRxruLl5n78cCigOH
xMXapqBnKA1zreybBA+qdbmC+zYyKTCuYGBcVWoG0Z8XUUJWzMrI962J9EJCW3fHaBySocxaZka0
7UkoVy8TUHMTS8il08xJGcakhB9bC6BkzS83URxVxBOORqQWPLhxRhzsII5JIICOw4f4w1ZEhx9Y
sQPjDRJivyjR1G8LUZt4PiSnCXc7UWcIdafpgXQz6DBsb/eWJzjNe+FUNcDavA7e8zpLwLN0lAAI
EDIN9vzSI/hvjEhFMFdoC13UgtMc8XMAFgmI89aoqs5hsFYTh75pMYAFNmBPliswkvQoGONTWp3b
QR7X6Tv1XhZ/VOkbJsxci/32hhJnNZHGMY3Fpjg+9hkpAVOG0p1v0oYqOAzs9jMteRRDARQnkzn4
NqooXOSPpEN8Ya33TkyeSzs9DDHOv438bNn7qd131xQMk2waq80dPNvOiWnS33TKxbX/XltHUvcu
FfduE1xcSO3GqdjpjI4b86ZTsSIuEB2ny4q8udIka+e5/YfE3itjf9N/dVW5W3PDELq8d29h+Ilj
lPZoAdQc+hoPDjIWZl4tNtEt4R6dH2HrMBkNEXKIm+mcFX4SzXG+JAAc6kHPIr80Vi+eQByP3oEJ
OTK19RcPwG42XYKhkAThbWtPYWAw3ZIu35HoGP71To5OSlVP1VZW/stB8+Of6REXCsbwgxPpMCAb
u3ZuRW0xYVCScGD4UR/aA3bXeC+yOBeM6vqpQYkMZvOY6y4pYozHwljxHr7I8ZpJd1QL+2e7f6j5
9otXfZeVP91k8oL56/epllYxkE18MV6z0j0cxJ/Km6E0Lwt4h8q2p734jTdEpGErlfj3Eu1m1u+R
nlt2qejWoS9wSMS6Rse7cFE2Dnn9mWsFtmPoBJXwNKfsmT+VhRVf+9bh0wBGSbvRLMcbjrD7Ld+w
x9vgkRphtrWTGA2D6/0QknPAXrjrEVivc4FwY3/d/cLwYMUm7/VeDC9FSzSArqwZTiKgzUIhgTIx
2TKdMYTq7Uxybkhlv1rvVEVx2CACbaQ/lMQGJfi7NkArSoM=
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
