----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.02.2018 08:51:45
-- Design Name: 
-- Module Name: FreqDiv150 - Behavioral
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

entity FreqDiv150 is
    Port ( iClk : in STD_LOGIC;
           reset : in STD_LOGIC;
           oClk : out STD_LOGIC);
end FreqDiv150;

architecture Behavioral of FreqDiv150 is
 signal temp : std_logic;
 signal cnt : integer range 0 to 40000 := 0;
begin
    freq_div : process(reset,iClk) begin
        if(reset = '1') then
            temp <= '0';
            cnt <= 0;
        elsif rising_edge(iClk) then
            if( cnt = 40000) then
                temp <= NOT(temp);
                cnt <= 0;
            else
                cnt <= cnt + 1;
            end if;
        end if;
    end process;
    
    oClk <= temp;


end Behavioral;
