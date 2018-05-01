@echo off
set xv_path=D:\\Programmes\\Xilinx\\Vivado\\2015.4\\bin
call %xv_path%/xsim main_tb_time_synth -key {Post-Synthesis:sim_1:Timing:main_tb} -tclbatch main_tb.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
