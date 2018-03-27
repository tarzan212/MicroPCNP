----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.03.2018 21:29:49
-- Design Name: 
-- Module Name: controlunit - Behavioral
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

entity controlunit is
    Port ( I_clk : in STD_LOGIC;
           I_reset : in STD_LOGIC;
           O_state : out STD_LOGIC_VECTOR (3 downto 0));
end controlunit;

architecture Behavioral of controlunit is
    signal s_state: std_logic_vector(3 downto 0) := "0001";
begin
    process(I_clk)
    begin
        if rising_edge(I_clk) then
            if I_reset = '1' then
                s_state <= "0001";
            else 
                case s_state is
                    when "0001" =>
                        s_state <= "0010";
                    when "0010" =>
                        s_state <= "0100";
                    when "0100" =>
                        s_state <= "1000";
                    when "1000" =>
                         s_state <= "0001";
                    when others =>
                        s_state <= "0001";
                end case;
             end if;
        end if;
   end process;
 O_state <= s_state;
                    

end Behavioral;
