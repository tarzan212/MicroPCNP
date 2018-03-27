----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.03.2018 21:11:54
-- Design Name: 
-- Module Name: alu - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
library work;
use work.constantes.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity alu is
    Port ( I_clk : in STD_LOGIC;
           I_en : in STD_LOGIC;
           I_dataA : in STD_LOGIC_VECTOR (15 downto 0);
           I_dataB : in STD_LOGIC_VECTOR (15 downto 0);
           I_dataDwe : in STD_LOGIC;
           I_aluop : in STD_LOGIC_VECTOR (4 downto 0);
           I_PC : in STD_LOGIC_VECTOR (15 downto 0);
           I_imm : in STD_LOGIC_VECTOR (15 downto 0);
           O_dataRes : out STD_LOGIC_VECTOR (15 downto 0);
           O_dataWriteReg : out STD_LOGIC;
           O_shouldBranch : out STD_LOGIC);
end alu;

architecture Behavioral of alu is
    signal s_result: STD_LOGIC_VECTOR(17 downto 0) := (others => '0');
    signal s_shouldBranch: std_logic := '0';
begin
    process(I_clk,I_en)
    begin
        if rising_edge(I_clk) and I_en = '1' then
            O_dataWriteReg <= I_dataDwe;
            case I_aluop(4 downto 1) is
                when OPCODE_ADD =>
                    if I_aluop(0) = '0' then
                        s_result(16 downto 0) <= std_logic_vector(unsigned('0' & I_dataA) + unsigned('0' & I_dataB));
                    else
                        s_result(16 downto 0) <= std_logic_vector(signed(I_dataA(15) & I_dataA) + signed(I_dataB(15)& I_dataB));
                    end if;
                    s_shouldBranch <= '0';
                  when OPCODE_OR =>
                      s_result(15 downto 0) <= I_dataA or I_dataB;
                      s_shouldBranch <= '0';
                  when OPCODE_LOAD =>
                        if I_aluop(0) = '0' then
                          s_result(15 downto 0) <= I_imm(7 downto 0) & X"00";
                        else
                          s_result(15 downto 0) <= X"00" & I_imm(7 downto 0);
                        end if;
                        s_shouldBranch <= '0';
                    when others =>
                        s_result <= "00" & X"FEFE";
             end case;
         end if;
     end process;
     
     O_dataRes <= s_result(15 downto 0);
     O_shouldBranch <= s_shouldBranch;

end Behavioral;
