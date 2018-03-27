----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.03.2018 09:08:02
-- Design Name: 
-- Module Name: cpu_fpga - Behavioral
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

entity cpu_fpga is
    Port ( I_CLK_100 : in STD_LOGIC;
           I_SWITCH : in STD_LOGIC_VECTOR(9 downto 0);
           Q_7_SEGMENT : out STD_LOGIC_VECTOR(6 downto 0));
end cpu_fpga;

architecture Behavioral of cpu_fpga is
    component core
        port ( I_CLK : in std_logic;
               I_CLR
begin


end Behavioral;
