# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7vx485tffg1157-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir {D:/Naif Mehanna/Documents/Cours/IMA4/CNP/projet_cnp_rihme/MicroControlCNP/MicroControlCNP.cache/wt} [current_project]
set_property parent.project_path {D:/Naif Mehanna/Documents/Cours/IMA4/CNP/projet_cnp_rihme/MicroControlCNP/MicroControlCNP.xpr} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
read_vhdl -library xil_defaultlib {{D:/Naif Mehanna/Documents/Cours/IMA4/CNP/projet_cnp_rihme/MicroControlCNP/MicroControlCNP.srcs/sources_1/new/ClockingModule.vhd}}
synth_design -top ClockingModule -part xc7vx485tffg1157-1
write_checkpoint -noxdef ClockingModule.dcp
catch { report_utilization -file ClockingModule_utilization_synth.rpt -pb ClockingModule_utilization_synth.pb }
