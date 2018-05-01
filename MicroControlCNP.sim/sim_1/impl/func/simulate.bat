@echo off
set xv_path=D:\\Programmes\\Xilinx\\Vivado\\2015.4\\bin
call %xv_path%/xsim alu_tb_func_impl -key {Post-Implementation:sim_1:Functional:alu_tb} -tclbatch alu_tb.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
