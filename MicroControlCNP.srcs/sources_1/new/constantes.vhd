----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.03.2018 17:34:40
-- Design Name: 
-- Module Name: constantes - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

package constantes is

    constant OPCODE_ADD: std_logic_vector(3 downto 0) := "0000";
    constant OPCODE_AND: std_logic_vector (3 downto 0) := "0011";
    constant OPCODE_SUB: std_logic_vector(3 downto 0) := "0001";
    constant OPCODE_OR: std_logic_vector(3 downto 0) := "0010";
    constant OPCODE_LOAD: std_logic_vector(3 downto 0) := "1000";
    constant OPCODE_JUMP: std_logic_vector(3 downto 0) := "1100";
    
    
    constant PCU_OP_NOP: std_logic_vector(1 downto 0) := "00";
    constant PCU_OP_INC: std_logic_vector(1 downto 0) := "01";
    constant PCU_OP_ASSIGN: std_logic_vector(1 downto 0) := "10";
    constant PCU_OP_RESET: std_logic_vector(1 downto 0) := "11";
    
end constantes;

package body constantes is
end constantes;