----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.02.2018 08:37:12
-- Design Name: 
-- Module Name: ClockingModule - Behavioral
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

entity ClockingModule is
    Port ( iClk : in STD_LOGIC;
           reset : in STD_LOGIC;
           oClk : out STD_LOGIC);
end ClockingModule;

architecture Behavioral of ClockingModule is
    signal temp : std_logic;
    signal cnt : integer range 0 to 99999999 := 0;
begin
    freq_div : process(reset,iClk) begin
        if(reset = '1') then
            temp <= '0';
            cnt <= '0';
        elsif rising_edge(iClk) then
            if( cnt = 99999999) then
                temp <= NOT(temp);
                cnt <= 0;
            else
                cnt <= cnt + 1;
            end if;
        end if;
    end process;
    
    oClk <= temp;


end Behavioral;
