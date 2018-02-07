----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:09:51 02/02/2018 
-- Design Name: 
-- Module Name:    IO - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use ieee.numeric_std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity IO is
    Port ( iClock200 : in  STD_LOGIC;
           iReset : in  STD_LOGIC;
           iData : in  STD_LOGIC_VECTOR (19 downto 0);
           oAff : out  STD_LOGIC_VECTOR (7 downto 0);
           oAn : out  STD_LOGIC_VECTOR (3 downto 0));
end IO;

architecture Behavioral of IO is
signal MSGAff : std_logic_vector(7 downto 0);
signal ANDir : std_logic_vector(3 downto 0);
signal cpt : integer range 0 to 3 :=0;
type tab_affiche is array(0 to 15) of std_logic_vector(7 downto 0);
signal tab_num : tab_affiche := (x"3F",x"06",x"5B",x"4F",x"66",x"6D",x"7D",x"07",x"7F",x"6F",x"77",x"7C",x"39",x"5E",x"79",x"71");
begin

process(iClock200)
begin
if rising_edge(iClock200) then
case cpt is 
when 0 => 
	ANDir <= "0111";
	MSGAff <= tab_num(to_integer(unsigned(iData(19 downto 16))));
	cpt <= 1;
when 1 =>
	ANDir <= "1011";
	MSGaFF <= tab_num(to_integer(unsigned(iData(15 downto 12))));
	cpt <= 2;
when 2 =>
	ANDir <= "1101";
	MSGAff <= tab_num(to_integer(unsigned(iData(11 downto 8))));
	cpt <= 3;
when 3 =>
	ANDir <= "1110";
	MSGAff <= tab_num(to_integer(unsigned(iData(7 downto 4))));
	cpt <= 0;
end case;	
end if;

end process;
oAn <= ANDir;
oAff <= MSGAff;	
end Behavioral;

