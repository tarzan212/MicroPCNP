----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.03.2018 12:18:36
-- Design Name: 
-- Module Name: ram16 - Behavioral
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

entity ram16 is
    Port ( I_clk : in STD_LOGIC;
           I_we : in STD_LOGIC;
           I_addr : in STD_LOGIC;
           I_data : in STD_LOGIC;
           O_data : out STD_LOGIC);
end ram16;

architecture Behavioral of ram16 is
    type memoire is array (0 to 31) of std_logic_vector(15 downto 0);
    signal ram_16: memoire := (others => X"0000");
begin

    process(I_clk)
    begin
        if(rising_edge(I_clk)) then
        if(I_we = '1') then
          ram_16(to_integer(unsigned(I_addr(5 downto 0)))) <= I_data;
         else
          O_data <= ram_16(to_integer(unsigned(I_addr(5 downto 0))));
        end if;
        end if;
    end process;


end Behavioral;
