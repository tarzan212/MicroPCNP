----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.04.2018 20:09:34
-- Design Name: 
-- Module Name: topmodule - Behavioral
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

entity topmodule is
    Port ( I_clk : in STD_LOGIC;
           I_switch : in STD_LOGIC_VECTOR (3 downto 0);
           O_leds : out STD_LOGIC_VECTOR (15 downto 0));
end topmodule;

architecture Behavioral of topmodule is
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
             O_state : out STD_LOGIC_VECTOR (4 downto 0));
          
      END COMPONENT;
      COMPONENT ram16 
      Port ( I_clk : in STD_LOGIC;
                 I_we : in STD_LOGIC;
                 I_addr : in STD_LOGIC_VECTOR(15 downto 0);
                 I_data : in STD_LOGIC_VECTOR(15 downto 0);
                 O_data : out STD_LOGIC_VECTOR(15 downto 0)
            );
      END COMPONENT;
      
      COMPONENT program_counter 
      Port ( I_clk : in STD_LOGIC;
                 I_nPc : in STD_LOGIC_VECTOR (15 downto 0);
                 I_nPCopcode : in STD_LOGIC_VECTOR (1 downto 0);
                 O_pc : out STD_LOGIC_VECTOR (15 downto 0)
                 );
      END COMPONENT;
      
     COMPONENT ClockingModule
     Port ( iClk : in STD_LOGIC;  
            reset : in STD_LOGIC; 
            oClk : out STD_LOGIC);
     END COMPONENT;
     
     signal reset: std_logic := '0';
     -- Enables
     signal en_decoder : std_logic := '0';
     signal en_readReg: std_logic := '0';
     signal en_alu: std_logic := '0';
     signal en_regWrite: std_logic := '0';
     
     -- Alu et control unit
     signal aluop: std_logic_vector (4 downto 0) := (others => '0');
     signal imm: std_logic_vector (15 downto 0) := (others => '0');
     signal dataDwe: std_logic := '0';
     signal PC: std_logic_vector(15 downto 0) := (others => '0');
     signal dataRes : std_logic_vector(15 downto 0);
     signal dataWriteReg: std_logic;
     signal shouldBranch: std_logic;
     
     
     
     signal pcOp : std_logic_vector(1 downto 0);
     signal pcIn : std_logic_vector(15 downto 0);
     
     --Instructions
     signal instruction: std_logic_vector (15 downto 0) := (others => '0');
     
     --- RAM
     signal ramwe : std_logic := '0';
     signal addrRam : std_logic_vector(15 downto 0);
     signal dataReadRam : std_logic_vector(15 downto 0);
     signal dataWriteRam : std_logic_vector(15 downto 0);
     signal selA : std_logic_vector(2 downto 0) := (others => '0');
     signal selB : std_logic_vector(2 downto 0) := (others => '0');
     signal selD : std_logic_vector(2 downto 0) := (others => '0');
        
    
    --Sorties
    signal dataA : std_logic_vector(15 downto 0);
    signal dataB : std_logic_vector(15 downto 0);
    
    --Pipeline
    signal state: std_logic_vector(4 downto 0);
     
     --Leds
     signal leds: std_logic_vector(15 downto 0) := (others => '0');
     --Clock
     signal dividedClock : std_logic;
begin
       --- Diviseur de frequences
       uut_clockingmodule: ClockingModule PORT MAP(
                    iClk => I_clk,
                    reset => reset,
                    oClk => dividedClock );
      --- Decodeur
      dec: decoder PORT MAP (
                I_instr => instruction,
               I_clk => dividedClock,
               I_enable => en_decoder,
               O_selD => selD,
               O_selA => selA,
               O_selB => selB,
               O_imm => imm,
               O_regDwe => dataDwe,
               O_aluop => aluop
              );
     --- Unite de controle    
     uut_controlunit: controlunit PORT MAP (
        I_clk=> dividedClock,
        I_reset => reset,
        O_state => state);
        
    --- ALU       
    uut_alu: alu PORT MAP(
        I_clk => dividedClock,
        I_en => en_alu,
        I_PC=>PC,
        I_aluop => aluop,
        I_dataA => dataA,
        I_dataB => dataB,
        I_dataDwe => dataDwe,
        I_imm => imm,
        O_dataRes => dataRes,
        O_dataWriteReg => dataWriteReg,
        O_shouldBranch => shouldBranch);
     
     --- RAM
     uut_ram: reg16_8 PORT MAP (
        I_clk => dividedClock,
        I_en => en_readReg or en_regWrite,
        I_dataD => dataRes,
        O_dataA => dataA,
        O_dataB => dataB,
        I_selA => selA,
        I_selB => selB,
        I_selD => selD,
        I_we => dataWriteReg AND en_regWrite
       );
       
      --- Mémoire de programme
      uut_ram16 : ram16 PORT MAP (
           I_clk => dividedClock,
           I_we => ramwe,
           I_addr => addrRam,
           I_data => dataWriteRam,
           O_data => dataReadRam);
           
      --- Program counter   
      uut_pc : program_counter PORT MAP (
           I_clk => dividedClock,
           I_nPc => pcIn,
           I_nPCopcode => pcOp,
           O_pc => PC );
           
       
           
      addrRam <= PC;
      dataWriteRam <= X"FFFF";
      ramwe <= '0';
      instruction <= dataReadRam;
           
      pcOp <= PCU_OP_RESET when reset = '1' else
              PCU_OP_ASSIGN when shouldBranch = '1' and state(4) = '1' else
              PCU_OP_INC when shouldBranch = '0' and state(4) = '1' else
              PCU_OP_NOP;
      en_decoder <= state(0);
      en_readReg <= state(1);
      en_alu <= state(2);
      en_regWrite <= state(3);
       
        
      pcIn <= dataRes;
        
      process(dividedClock) 
        begin
            if rising_edge(dividedClock) then
               leds <= dataB(15 downto 0);
           end if;
      end process;
        
      O_leds <= leds(14 downto 0) & reset;
      reset <= I_switch(0);
end Behavioral;
