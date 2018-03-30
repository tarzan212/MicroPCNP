----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.03.2018 20:17:08
-- Design Name: 
-- Module Name: ram16_tb - Behavioral
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

entity ram16_tb is
--  Port ( );
end ram16_tb;



architecture Behavioral of ram16_tb is
COMPONENT ram16 
Port ( I_clk : in STD_LOGIC;
           I_we : in STD_LOGIC;
           I_addr : in STD_LOGIC;
           I_data : in STD_LOGIC;
           O_data : out STD_LOGIC
      );
END COMPONENT;

COMPONENT program_counter 
Port ( I_clk : in STD_LOGIC;
           I_nPc : in STD_LOGIC_VECTOR (15 downto 0);
           I_nPCopcode : in STD_LOGIC_VECTOR (1 downto 0);
           O_pc : out STD_LOGIC_VECTOR (15 downto 0)
           );
END COMPONENT;

signal I_clk: std_logic := '0';
signal reset :std_logic := '0';

signal ramwe : std_logic := '0';
signal addrRam : std_logic_vector(15 downto 0);
signal dataReadRam : std_logic_vector(15 downto 0);
signal dataWriteRam : std_logic_vector(15 downto 0);
signal nPc : std_logic_vector(15 downto 0);
signal pcOp : std_logic_vector(15 downto 0);
signal pcIn : std_logic_vector(15 downto 0);

signal instruction : std_logic_vector(15 downto 0) := (others => '0');

constant I_clk_period : time := 10 ns;

begin

uut_ram16 : ram16 PORT MAP (
    I_clk => I_clk,
    I_we => ramwe,
    I_addr => addrRam,
    I_data => dataWriteRam,
    O_data => dataReadRam);
    
uut_pc : program_counter PORT MAP (
    I_clk => I_clk,
    I_nPc => pcIn,
    I_nPCopcode => pcOp,
    O_pc => nPc );
    
    addrRam <= nPc;
    dataWriteRam <= X"FFFF";
    ramwe <= '0';
    instruction <= dataReadRam;
    
    pcOp <= PCU_OP_RESET when reset = '1';
    
    
    
    I_clk_process :process
       begin
        I_clk <= '0';
        wait for I_clk_period/2;
        I_clk <= '1';
        wait for I_clk_period/2;
       end process;


end Behavioral;
