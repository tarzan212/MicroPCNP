@echo off
set xv_path=D:\\Programmes\\Xilinx\\Vivado\\2015.4\\bin
call %xv_path%/xelab  -wto 1d0fe448b73c4e818a648305ecd76786 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot main_tb_behav xil_defaultlib.main_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
