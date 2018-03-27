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
                O_aluop : out STD_LOGIC_VECTOR (4 downto 0)
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
          
      COMPONENT controlunit
       PORT (I_clk : in STD_LOGIC;
             I_reset : in STD_LOGIC;
             O_state : out STD_LOGIC_VECTOR (3 downto 0));
          
      END COMPONENT;
     
     
     signal I_clk : std_logic := '0';
     signal reset: std_logic := '0';
     signal en_decoder : std_logic := '0';
     signal en_readReg: std_logic := '0';
     signal en_alu: std_logic := '0';
     signal en_regWrite: std_logic := '0';
     signal I_aluop: std_logic_vector (4 downto 0) := (others => '0');
     signal I_dataA: STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
     signal I_dataB: STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
     signal I_imm: std_logic_vector (15 downto 0) := (others => '0');
     signal I_dataDwe: std_logic := '0';
     signal I_PC: std_logic_vector(15 downto 0) := (others => '0');
     signal O_dataRes : std_logic_vector(15 downto 0);
     signal O_dataWriteReg: std_logic;
     signal O_shouldBranch: std_logic;
     
     signal instruction: std_logic_vector (15 downto 0) := (others => '0');
     
     --- RAM
     
     signal I_selA : std_logic_vector(2 downto 0) := (others => '0');
        signal I_selB : std_logic_vector(2 downto 0) := (others => '0');
        signal I_selD : std_logic_vector(2 downto 0) := (others => '0');
        
        ---OUTPUT RAM
        --Outputs
           signal O_dataA : std_logic_vector(15 downto 0);
           signal O_dataB : std_logic_vector(15 downto 0);
     
     signal state: std_logic_vector(3 downto 0);
     constant I_clk_period: time := 10ns; 
        
begin
    uut_dec: decoder PORT MAP (
                I_instr => instruction,
               I_clk => I_clk,
               I_enable => en_decoder,
               O_selD => I_selD,
               O_selA => I_selA,
               O_selB => I_selB,
               O_imm => I_imm,
               O_regDwe => I_dataDwe,
               O_aluop => I_aluop
              );
              
     uut_controlunit: controlunit PORT MAP (
        I_clk=> I_clk,
        I_reset => reset,
        O_state => state);
        
              
    uut_alu: alu PORT MAP(
        I_clk => I_clk,
        I_en => en_alu,
        I_PC=>I_PC,
        I_aluop => I_aluop,
        I_dataA => O_dataA,
        I_dataB => O_dataB,
        I_dataDwe => I_dataDwe,
        I_imm => I_imm,
        O_dataRes => O_dataRes,
        O_dataWriteReg => O_dataWriteReg,
        O_shouldBranch => O_shouldBranch);
        
     uut_ram: reg16_8 PORT MAP (
        I_clk => I_clk,
        I_en => en_readReg or en_regWrite,
        I_dataD => O_dataRes,
        O_dataA => O_dataA,
        O_dataB => O_dataB,
        I_selA => I_selA,
        I_selB => I_selB,
        I_selD => I_selD,
        I_we => O_dataWriteReg AND en_regWrite
       );
       
       en_decoder <= state(0);
       en_readReg <= state(1);
       en_alu <= state(2);
       en_regWrite <= state(3);
       
        
        I_clk_process: process
        begin
            I_clk <= '0';
            wait for I_clk_period/2;
            I_clk <= '1';
            wait for I_clk_period/2;
        end process;
        
        stim_proc: process
        begin
          -- hold reset state for 100 ns.
          wait for 100 ns;  
          wait for I_clk_period*10;
          
          reset <= '1'; -- reset control unit
          --load.h r0,0xfe
          instruction <= OPCODE_LOAD & "000" & '0' & X"fe";
          reset <= '0'; -- enable/start control unit
          wait until en_regwrite = '1';
           
          --load.l r1, 0xed
          instruction <= OPCODE_LOAD & "001" & '1' & X"ed";
          wait until en_regwrite = '1';
           
          --or r2, r0, r1
          instruction <= OPCODE_OR & "010" & '0' & "000" & "001" & "00";
          wait until en_regwrite = '1';
           
          --load.l r3, 1
          instruction <= OPCODE_LOAD & "011" & '1' & X"01";
          wait until en_regwrite = '1';
           
          --load.l r4, 2
          instruction <= OPCODE_LOAD & "100" & '1' & X"02";
          wait until en_regwrite = '1';
           
          --add.u r3, r3, r4
          instruction <= OPCODE_ADD & "011" & '0' & "011" & "100" & "00";
          wait until en_regwrite = '1';
           
          --or r5, r0, r3
          instruction <= OPCODE_OR & "101" & '0' & "000" & "011" & "00";
          wait until en_regwrite = '1';

        end process;


end Behavioral;
