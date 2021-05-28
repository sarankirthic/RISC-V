@echo off
REM ****************************************************************************
REM Vivado (TM) v2020.2 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Fri May 28 23:06:33 +0530 2021
REM SW Build 3064766 on Wed Nov 18 09:12:45 MST 2020
REM
REM Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
REM simulate design
echo "xsim anton_mcu_top_tb_behav -key {Behavioral:sim_1:Functional:anton_mcu_top_tb} -tclbatch anton_mcu_top_tb.tcl -protoinst "protoinst_files/Instr_ROM.protoinst" -protoinst "protoinst_files/BRAM_32B_SDP.protoinst" -protoinst "protoinst_files/Data_RAM.protoinst" -protoinst "protoinst_files/PLL.protoinst" -view D:/Harid/HobbyProjects/Electronics/FPGAProjetcs/riscv_j/program_counter_tb_behav.wcfg -log simulate.log"
call xsim  anton_mcu_top_tb_behav -key {Behavioral:sim_1:Functional:anton_mcu_top_tb} -tclbatch anton_mcu_top_tb.tcl -protoinst "protoinst_files/Instr_ROM.protoinst" -protoinst "protoinst_files/BRAM_32B_SDP.protoinst" -protoinst "protoinst_files/Data_RAM.protoinst" -protoinst "protoinst_files/PLL.protoinst" -view D:/Harid/HobbyProjects/Electronics/FPGAProjetcs/riscv_j/program_counter_tb_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
