----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.03.2018 12:05:20
-- Design Name: 
-- Module Name: decoder - Behavioral
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

entity decoder is
    Port ( I_clk : in STD_LOGIC;
           I_instr : in STD_LOGIC_VECTOR (15 downto 0);
           I_enable : in STD_LOGIC;
           O_selA : out STD_LOGIC_VECTOR (2 downto 0);
           O_selB : out STD_LOGIC_VECTOR (2 downto 0);
           O_selD : out STD_LOGIC_VECTOR (2 downto 0);
           O_imm : out STD_LOGIC_VECTOR(15 downto 0);
           O_regDwe : out STD_LOGIC;
           O_aluop : out STD_LOGIC_VECTOR (4 downto 0));
end decoder;

architecture Behavioral of decoder is

begin
    process(I_clk)
    begin
        if rising_edge(I_clk) and I_enable = '1' then
        
            O_selA <= I_instr(7 downto 5);
            O_selB <= I_instr(4 downto 2);
            O_selD <= I_instr(11 downto 9);
            O_imm <= I_instr(7 downto 0) & I_instr(7 downto 0); -- Afin de former sur 16 bits
            O_aluop <= I_instr(15 downto 12) & I_instr(8);
            
            case I_instr(15 downto 12) is  
                when "0111" => --pour lecriture
                O_regDwe <= '0';
                        when "1100" =>   -- commande JUMP
                          O_regDwe <= '0';
                        when "1101" =>   -- commande JUMPQ
                          O_regDwe <= '0';
                        when others =>
                          O_regDwe <= '1';
           end case;
        end if;
    end process;

end Behavioral;
