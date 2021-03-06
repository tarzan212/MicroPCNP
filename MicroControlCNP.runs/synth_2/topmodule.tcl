# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {Common 17-41} -limit 10000000
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir {D:/Naif Mehanna/Documents/Cours/IMA4/CNP/projet_cnp_rihme/MicroControlCNP/MicroControlCNP.cache/wt} [current_project]
set_property parent.project_path {D:/Naif Mehanna/Documents/Cours/IMA4/CNP/projet_cnp_rihme/MicroControlCNP/MicroControlCNP.xpr} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
read_vhdl -library xil_defaultlib {
  {D:/Naif Mehanna/Documents/Cours/IMA4/CNP/projet_cnp_rihme/MicroControlCNP/MicroControlCNP.srcs/sources_1/new/constantes.vhd}
  {D:/Naif Mehanna/Documents/Cours/IMA4/CNP/projet_cnp_rihme/MicroControlCNP/MicroControlCNP.srcs/sources_1/new/ClockingModule.vhd}
  {D:/Naif Mehanna/Documents/Cours/IMA4/CNP/projet_cnp_rihme/MicroControlCNP/MicroControlCNP.srcs/sources_1/new/FreqDiv150.vhd}
  {D:/Naif Mehanna/Documents/Cours/IMA4/CNP/projet_cnp_rihme/MicroControlCNP/MicroControlCNP.srcs/sources_1/new/Afficheurs.vhd}
  {D:/Naif Mehanna/Documents/Cours/IMA4/CNP/projet_cnp_rihme/MicroControlCNP/MicroControlCNP.srcs/sources_1/imports/new/reg16_8.vhd}
  {D:/Naif Mehanna/Documents/Cours/IMA4/CNP/projet_cnp_rihme/MicroControlCNP/MicroControlCNP.srcs/sources_1/new/ram16.vhd}
  {D:/Naif Mehanna/Documents/Cours/IMA4/CNP/projet_cnp_rihme/MicroControlCNP/MicroControlCNP.srcs/sources_1/new/program_counter.vhd}
  {D:/Naif Mehanna/Documents/Cours/IMA4/CNP/projet_cnp_rihme/MicroControlCNP/MicroControlCNP.srcs/sources_1/new/decoder.vhd}
  {D:/Naif Mehanna/Documents/Cours/IMA4/CNP/projet_cnp_rihme/MicroControlCNP/MicroControlCNP.srcs/sources_1/new/controlunit.vhd}
  {D:/Naif Mehanna/Documents/Cours/IMA4/CNP/projet_cnp_rihme/MicroControlCNP/MicroControlCNP.srcs/sources_1/new/alu.vhd}
  {D:/Naif Mehanna/Documents/Cours/IMA4/CNP/projet_cnp_rihme/MicroControlCNP/MicroControlCNP.srcs/sources_1/new/topmodule.vhd}
}
read_xdc {{D:/Naif Mehanna/Documents/Cours/IMA4/CNP/projet_cnp_rihme/MicroControlCNP/MicroControlCNP.srcs/constrs_1/new/constraints.xdc}}
set_property used_in_implementation false [get_files {{D:/Naif Mehanna/Documents/Cours/IMA4/CNP/projet_cnp_rihme/MicroControlCNP/MicroControlCNP.srcs/constrs_1/new/constraints.xdc}}]

synth_design -top topmodule -part xc7a35tcpg236-1
write_checkpoint -noxdef topmodule.dcp
catch { report_utilization -file topmodule_utilization_synth.rpt -pb topmodule_utilization_synth.pb }
