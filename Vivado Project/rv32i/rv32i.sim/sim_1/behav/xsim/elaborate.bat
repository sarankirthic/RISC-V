@echo off
REM ****************************************************************************
REM Vivado (TM) v2020.2 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Fri May 28 23:06:30 +0530 2021
REM SW Build 3064766 on Wed Nov 18 09:12:45 MST 2020
REM
REM Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
REM elaborate design
echo "xelab -wto 303c234b972a4d379502a51e6481006f --incr --debug typical --relax --mt 2 -L xil_defaultlib -L blk_mem_gen_v8_4_4 -L uvm -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot anton_mcu_top_tb_behav xil_defaultlib.anton_mcu_top_tb xil_defaultlib.glbl -log elaborate.log"
call xelab  -wto 303c234b972a4d379502a51e6481006f --incr --debug typical --relax --mt 2 -L xil_defaultlib -L blk_mem_gen_v8_4_4 -L uvm -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot anton_mcu_top_tb_behav xil_defaultlib.anton_mcu_top_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
