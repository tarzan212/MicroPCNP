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

entity Afficheurs is
    Port ( iClk : in  STD_LOGIC;
           ireset     : in  STD_LOGIC;
           iData      : in  STD_LOGIC_VECTOR (15 downto 0);
           oAff       : out  STD_LOGIC_VECTOR (7 downto 0);
           oAn        : out  STD_LOGIC_VECTOR (3 downto 0));
end Afficheurs;

architecture Behavioral of Afficheurs is
signal MSGAff : std_logic_vector(7 downto 0);
signal ANDir  : std_logic_vector(3 downto 0);
signal cpt    : integer range 0 to 3 :=0;
type tab_affiche is array(0 to 15) of std_logic_vector(7 downto 0);
signal tab_num : tab_affiche := ("10000001","11001111","10010010","10000110","11001100","10100100","10100000","10001111","10000000","10000100","10001000","11100000","10110001","11000010","10110000","10111000");--0,1,2,3,4,5,6,7,8,9,A,B,C,D,E,F

begin

    process(iClk)
    begin
        if rising_edge(iClk) then
            case cpt is 
                when 0 => 
                   ANDir <= "0111";
                    MSGAff <= tab_num(to_integer(unsigned(iData(15 downto 12))));
                    cpt <= 1;
                when 1 =>
                   ANDir <= "1011";
                   MSGaFF <= tab_num(to_integer(unsigned(iData(11 downto 8))));
                   cpt <= 2;
                when 2 =>
                   ANDir <= "1101";
                   MSGAff <= tab_num(to_integer(unsigned(iData(7 downto 4))));
                   cpt <= 3;
                when 3 =>
                   ANDir <= "1110";
                   MSGAff <= tab_num(to_integer(unsigned(iData(3 downto 0))));
                   cpt <= 0;
            end case;	
        end if;
    end process;
    oAn <= ANDir;
    oAff <= MSGAff;	
end Behavioral;