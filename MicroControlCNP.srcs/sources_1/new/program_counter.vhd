----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.03.2018 21:43:57
-- Design Name: 
-- Module Name: program_counter - Behavioral
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

entity program_counter is
    Port ( I_clk : in STD_LOGIC;
           I_nPc : in STD_LOGIC_VECTOR (15 downto 0);
           I_nPCopcode : in STD_LOGIC_VECTOR (1 downto 0);
           O_pc : out STD_LOGIC_VECTOR (15 downto 0));
end program_counter;

architecture Behavioral of program_counter is
    signal pc_actuel: std_logic_vector(15 downto 0) :=X"0000";
begin
    process (I_clk)
    begin
        if rising_edge(I_clk) then
            case I_nPCopcode is
                when PCU_OP_NOP =>
                when PCU_OP_INC =>
                    pc_actuel <= std_logic_vector(unsigned(pc_actuel) + 1);
                when PCU_OP_ASSIGN =>
                    pc_actuel <= I_nPC;
                when PCU_OP_RESET =>
                    pc_actuel <= X"0000";
                when others =>
            end case;
        end if;
    end process;
        
    O_pc <= pc_actuel; 
    
    -- Ajouter les constantes


end Behavioral;
