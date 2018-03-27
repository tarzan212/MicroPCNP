----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.03.2018 17:51:04
-- Design Name: 
-- Module Name: alu_tb - Behavioral
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
library work;
use work.constantes.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity alu_tb is
--  Port ( );
end alu_tb;

architecture Behavioral of alu_tb is
     COMPONENT alu
     PORT( I_clk : in STD_LOGIC;
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
     END COMPONENT;
     
     COMPONENT decoder
     PORT( I_clk : in STD_LOGIC;
                I_instr : in STD_LOGIC_VECTOR (15 downto 0);
                I_enable : in STD_LOGIC;
                O_selA : out STD_LOGIC_VECTOR (2 downto 0);
                O_selB : out STD_LOGIC_VECTOR (2 downto 0);
                O_selD : out STD_LOGIC_VECTOR (2 downto 0);
                O_imm : out STD_LOGIC_VECTOR(15 downto 0);
                O_regDwe : out STD_LOGIC;
                O_aluop : in STD_LOGIC_VECTOR (4 downto 0)
               );
      END COMPONENT;
      
      COMPONENT reg16_8
          PORT(
               I_clk : IN  std_logic;
               I_en : IN  std_logic;
               I_dataD : IN  std_logic_vector(15 downto 0);
               O_dataA : OUT  std_logic_vector(15 downto 0);
               O_dataB : OUT  std_logic_vector(15 downto 0);
               I_selA : IN  std_logic_vector(2 downto 0);
               I_selB : IN  std_logic_vector(2 downto 0);
               I_selD : IN  std_logic_vector(2 downto 0);
               I_we : IN  std_logic
              );
          END COMPONENT;
          
      
     
     
     signal I_clk : std_logic := '0';
     signal I_en : std_logic := '0';
     signal I_aluop: std_logic_vector (4 downto 0) := (others => '0');
     signal I_dataA: STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
     signal I_dataB: STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
     signal I_imm: std_logic_vector (15 downto 0) := (others => '0');
     signal I_dataDwe: std_logic := '0';
     signal I_PC: std_logic_vector(15 downto 0) := (others => '0');
     signal O_dataRes : std_logic_vector(15 downto 0);
     signal O_dataWriteReg: std_logic;
     signal O_shouldBranch: std_logic;
     
     --- RAM
     
     signal I_selA : std_logic_vector(2 downto 0) := (others => '0');
        signal I_selB : std_logic_vector(2 downto 0) := (others => '0');
        signal I_selD : std_logic_vector(2 downto 0) := (others => '0');
        
        ---OUTPUT RAM
        --Outputs
           signal O_dataA : std_logic_vector(15 downto 0);
           signal O_dataB : std_logic_vector(15 downto 0);
     
     constant I_clk_period: time := 10ns; 
        
begin

    uut_alu: alu PORT MAP(
        I_clk => I_clk,
        I_en => I_en,
        I_PC=>I_PC,
        I_aluop => I_aluop,
        I_dataA => I_dataA,
        I_dataB => I_dataB,
        I_dataDwe => I_dataDwe,
        I_imm => I_imm,
        O_dataRes => O_dataRes,
        O_dataWriteReg => O_dataWriteReg,
        O_shouldBranch => O_shouldBranch);
        
     uut_ram: reg16_8 PORT MAP (
        I_clk => I_clk,
        I_en => '1',
        I_dataD => O_dataRes,
        O_dataA => O_dataA,
        O_dataB => O_dataB,
        I_selA => I_selA,
        I_selB => I_selB,
        I_selD => I_selD,
        I_we => O_dataWriteReg
       );
       
       uut_dec: decoder PORT MAP (
               I_clk => I_clk,
               I_en => I_en,
               O_selD => I_selD,
               O_dataA => O_dataA,
               O_dataB => O_dataB,
               -- A COMPLETER
               I_we => O_dataWriteReg
              );
        
        I_clk_process: process
        begin
            I_clk <= '0';
            wait for I_clk_period/2;
            I_clk <= '1';
            wait for I_clk_period/2;
        end process;
        
        stim_proc: process
        begin
            wait for 100 ns;
            wait for I_clk_period*10;
            
            I_en <= '1';
            
            I_dataA <= X"0001";
            I_dataB <= X"0002";
            I_aluop <= OPCODE_ADD & '0';
            I_imm <= X"F1FA";
             
            wait for I_clk_period;
         end process;


end Behavioral;
