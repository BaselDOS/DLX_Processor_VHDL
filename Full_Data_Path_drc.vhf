--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Full_Data_Path_drc.vhf
-- /___/   /\     Timestamp : 06/08/2022 21:50:27
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: F:\ProgramData\Xilinx\14.7\ISE_DS\ISE\bin\nt64\unwrapped\sch2hdl.exe -intstyle ise -family spartan6 -flat -suppress -vhdl Full_Data_Path_drc.vhf -w "F:/semesterB2021/computer artitichture Lab/exp7/B6/Home_S251/Full_Data_Path.sch"
--Design Name: Full_Data_Path
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL M2_1_HXILINX_Full_Data_Path -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M2_1_HXILINX_Full_Data_Path is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    S0  : in std_logic
  );
end M2_1_HXILINX_Full_Data_Path;

architecture M2_1_HXILINX_Full_Data_Path_V of M2_1_HXILINX_Full_Data_Path is
begin
  process (D0, D1, S0)
  begin
    case S0 is
    when '0' => O <= D0;
    when '1' => O <= D1;
    when others => NULL;
    end case;
    end process; 
end M2_1_HXILINX_Full_Data_Path_V;
----- CELL ADSU16_HXILINX_Full_Data_Path -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity ADSU16_HXILINX_Full_Data_Path is
port(
    CO   : out std_logic;
    OFL  : out std_logic;
    S    : out std_logic_vector(15 downto 0);

    A    : in std_logic_vector(15 downto 0);
    ADD  : in std_logic;
    B    : in std_logic_vector(15 downto 0);
    CI   : in std_logic
  );
end ADSU16_HXILINX_Full_Data_Path;

architecture ADSU16_HXILINX_Full_Data_Path_V of ADSU16_HXILINX_Full_Data_Path is

begin
  adsu_p : process (A, ADD, B, CI)
    variable adsu_tmp : std_logic_vector(16 downto 0);
  begin
    if(ADD = '1') then
     adsu_tmp := conv_std_logic_vector((conv_integer(A) + conv_integer(B) + conv_integer(CI)),17);
    else
     adsu_tmp := conv_std_logic_vector((conv_integer(A) - conv_integer(not CI) - conv_integer(B)),17);
  end if;
      
  S   <= adsu_tmp(15 downto 0);
   
  if (ADD='1') then
    CO <= adsu_tmp(16);
    OFL <=  ( A(15) and B(15) and (not adsu_tmp(15)) ) or ( (not A(15)) and (not B(15)) and adsu_tmp(15) );  
  else
    CO <= not adsu_tmp(16);
    OFL <=  ( A(15) and (not B(15)) and (not adsu_tmp(15)) ) or ( (not A(15)) and B(15) and adsu_tmp(15) );  
  end if;
 
  end process;
  
end ADSU16_HXILINX_Full_Data_Path_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity DLX_Full_Control_MUSER_Full_Data_Path is
   port ( ACK_N     : in    std_logic; 
          AEQZ      : in    std_logic; 
          clk       : in    std_logic; 
          imm       : in    std_logic_vector (15 downto 0); 
          OPCODE    : in    std_logic_vector (5 downto 0); 
          reset     : in    std_logic; 
          STEP_EN   : in    std_logic; 
          ADD       : out   std_logic; 
          AS_N      : out   std_logic; 
          A_EN      : out   std_logic; 
          A_sel     : out   std_logic; 
          BUSY      : out   std_logic; 
          B_EN      : out   std_logic; 
          C_EN      : out   std_logic; 
          DINT_sel  : out   std_logic; 
          DLX_State : out   std_logic_vector (4 downto 0); 
          GPR_WE    : out   std_logic; 
          IN_INIT   : out   std_logic; 
          IR_CE     : out   std_logic; 
          ITYPE     : out   std_logic; 
          JLINK     : out   std_logic; 
          Mac_State : out   std_logic_vector (1 downto 0); 
          MAR_EN    : out   std_logic; 
          MDR_EN    : out   std_logic; 
          MDR_sel   : out   std_logic; 
          MR        : out   std_logic; 
          MW        : out   std_logic; 
          PC_STEP   : out   std_logic; 
          SHIFT     : out   std_logic; 
          stop_n    : out   std_logic; 
          S1_sel    : out   std_logic_vector (1 downto 0); 
          S2_sel    : out   std_logic_vector (1 downto 0); 
          TEST      : out   std_logic; 
          WR_N      : out   std_logic);
end DLX_Full_Control_MUSER_Full_Data_Path;

architecture BEHAVIORAL of DLX_Full_Control_MUSER_Full_Data_Path is
   signal BUSY_DUMMY : std_logic;
   signal MR_DUMMY   : std_logic;
   signal MW_DUMMY   : std_logic;
   component Mac
      port ( clk    : in    std_logic; 
             reset  : in    std_logic; 
             ACK_N  : in    std_logic; 
             MW     : in    std_logic; 
             MR     : in    std_logic; 
             STOP_N : out   std_logic; 
             BUSY   : out   std_logic; 
             AS_N   : out   std_logic; 
             WR_N   : out   std_logic; 
             state  : out   std_logic_vector (1 downto 0));
   end component;
   
   component DLX_Full_StateMachine
      port ( mr        : out   std_logic; 
             mw        : out   std_logic; 
             in_init   : out   std_logic; 
             gpr_we    : out   std_logic; 
             IR_ce     : out   std_logic; 
             test      : out   std_logic; 
             add       : out   std_logic; 
             jlink     : out   std_logic; 
             itype     : out   std_logic; 
             A_ce      : out   std_logic; 
             B_ce      : out   std_logic; 
             C_ce      : out   std_logic; 
             MDR_ce    : out   std_logic; 
             MAR_ce    : out   std_logic; 
             PC_ce     : out   std_logic; 
             Asel      : out   std_logic; 
             DINTset   : out   std_logic; 
             MDRsel    : out   std_logic; 
             shift_en  : out   std_logic; 
             S1sel     : out   std_logic_vector (1 downto 0); 
             S2sel     : out   std_logic_vector (1 downto 0); 
             state_out : out   std_logic_vector (4 downto 0); 
             step_en   : in    std_logic; 
             busy      : in    std_logic; 
             AEQZ      : in    std_logic; 
             opcode    : in    std_logic_vector (5 downto 0); 
             clk       : in    std_logic; 
             reset     : in    std_logic; 
             imm       : in    std_logic_vector (15 downto 0));
   end component;
   
begin
   BUSY <= BUSY_DUMMY;
   MR <= MR_DUMMY;
   MW <= MW_DUMMY;
   XLXI_1 : Mac
      port map (ACK_N=>ACK_N,
                clk=>clk,
                MR=>MR_DUMMY,
                MW=>MW_DUMMY,
                reset=>reset,
                AS_N=>AS_N,
                BUSY=>BUSY_DUMMY,
                state(1 downto 0)=>Mac_State(1 downto 0),
                STOP_N=>stop_n,
                WR_N=>WR_N);
   
   XLXI_2 : DLX_Full_StateMachine
      port map (AEQZ=>AEQZ,
                busy=>BUSY_DUMMY,
                clk=>clk,
                imm(15 downto 0)=>imm(15 downto 0),
                opcode(5 downto 0)=>OPCODE(5 downto 0),
                reset=>reset,
                step_en=>STEP_EN,
                add=>ADD,
                Asel=>A_sel,
                A_ce=>A_EN,
                B_ce=>B_EN,
                C_ce=>C_EN,
                DINTset=>DINT_sel,
                gpr_we=>GPR_WE,
                in_init=>IN_INIT,
                IR_ce=>IR_CE,
                itype=>ITYPE,
                jlink=>JLINK,
                MAR_ce=>MAR_EN,
                MDRsel=>MDR_sel,
                MDR_ce=>MDR_EN,
                mr=>MR_DUMMY,
                mw=>MW_DUMMY,
                PC_ce=>PC_STEP,
                shift_en=>SHIFT,
                state_out(4 downto 0)=>DLX_State(4 downto 0),
                S1sel(1 downto 0)=>S1_sel(1 downto 0),
                S2sel(1 downto 0)=>S2_sel(1 downto 0),
                test=>TEST);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity REG_A_B_C_MUSER_Full_Data_Path is
   port ( ce          : in    std_logic; 
          clk         : in    std_logic; 
          REG_ABC_In  : in    std_logic_vector (31 downto 0); 
          REG_ABC_Out : out   std_logic_vector (31 downto 0));
end REG_A_B_C_MUSER_Full_Data_Path;

architecture BEHAVIORAL of REG_A_B_C_MUSER_Full_Data_Path is
   component REG32CE
      port ( CLK  : in    std_logic; 
             CE   : in    std_logic; 
             DIN  : in    std_logic_vector (31 downto 0); 
             DOUT : out   std_logic_vector (31 downto 0));
   end component;
   
begin
   XLXI_1 : REG32CE
      port map (CE=>ce,
                CLK=>clk,
                DIN(31 downto 0)=>REG_ABC_In(31 downto 0),
                DOUT(31 downto 0)=>REG_ABC_Out(31 downto 0));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity REG_PC_MUSER_Full_Data_Path is
   port ( ce     : in    std_logic; 
          clk    : in    std_logic; 
          PC_IN  : in    std_logic_vector (31 downto 0); 
          reset  : in    std_logic; 
          PC_Out : out   std_logic_vector (31 downto 0));
end REG_PC_MUSER_Full_Data_Path;

architecture BEHAVIORAL of REG_PC_MUSER_Full_Data_Path is
   component REG32RST
      port ( CLK  : in    std_logic; 
             CE   : in    std_logic; 
             RST  : in    std_logic; 
             DIN  : in    std_logic_vector (31 downto 0); 
             DOUT : out   std_logic_vector (31 downto 0));
   end component;
   
begin
   XLXI_1 : REG32RST
      port map (CE=>ce,
                CLK=>clk,
                DIN(31 downto 0)=>PC_IN(31 downto 0),
                RST=>reset,
                DOUT(31 downto 0)=>PC_Out(31 downto 0));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity ALU_Comprator_MUSER_Full_Data_Path is
   port ( F        : in    std_logic_vector (2 downto 0); 
          NE_G     : in    std_logic; 
          S        : in    std_logic_vector (31 downto 0); 
          COMP_OUT : out   std_logic);
end ALU_Comprator_MUSER_Full_Data_Path;

architecture BEHAVIORAL of ALU_Comprator_MUSER_Full_Data_Path is
   attribute BOX_TYPE   : string ;
   signal XLXN_6   : std_logic;
   signal XLXN_8   : std_logic;
   signal XLXN_9   : std_logic;
   signal XLXN_11  : std_logic;
   signal XLXN_12  : std_logic;
   signal XLXN_39  : std_logic;
   component AEQZ
      port ( Din   : in    std_logic_vector (31 downto 0); 
             A_eqz : out   std_logic);
   end component;
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component AND2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B1 : component is "BLACK_BOX";
   
begin
   XLXI_1 : AEQZ
      port map (Din(31 downto 0)=>S(31 downto 0),
                A_eqz=>XLXN_11);
   
   XLXI_2 : OR2
      port map (I0=>XLXN_12,
                I1=>XLXN_6,
                O=>XLXN_9);
   
   XLXI_3 : OR2
      port map (I0=>XLXN_8,
                I1=>XLXN_9,
                O=>COMP_OUT);
   
   XLXI_5 : AND2
      port map (I0=>F(1),
                I1=>XLXN_11,
                O=>XLXN_6);
   
   XLXI_13 : AND2B1
      port map (I0=>XLXN_11,
                I1=>XLXN_39,
                O=>XLXN_8);
   
   XLXI_33 : AND2
      port map (I0=>NE_G,
                I1=>F(2),
                O=>XLXN_12);
   
   XLXI_34 : AND2B1
      port map (I0=>NE_G,
                I1=>F(0),
                O=>XLXN_39);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity ALU_ADDER_MUSER_Full_Data_Path is
   port ( A    : in    std_logic_vector (31 downto 0); 
          ADD  : in    std_logic; 
          B    : in    std_logic_vector (31 downto 0); 
          CO   : out   std_logic; 
          NE_G : out   std_logic; 
          OFL  : out   std_logic; 
          SUM  : out   std_logic_vector (31 downto 0));
end ALU_ADDER_MUSER_Full_Data_Path;

architecture BEHAVIORAL of ALU_ADDER_MUSER_Full_Data_Path is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal ADD_INV      : std_logic;
   signal CO_0         : std_logic;
   signal CO_1         : std_logic;
   signal CO_2         : std_logic;
   signal OF_0         : std_logic;
   signal OF_1         : std_logic;
   signal OF_2         : std_logic;
   signal SUM_Choise_1 : std_logic_vector (15 downto 0);
   signal SUM_Choise_2 : std_logic_vector (15 downto 0);
   signal XLXN_44      : std_logic;
   signal XLXN_48      : std_logic;
   signal CO_DUMMY     : std_logic;
   component ADSU16_HXILINX_Full_Data_Path
      port ( A   : in    std_logic_vector (15 downto 0); 
             ADD : in    std_logic; 
             B   : in    std_logic_vector (15 downto 0); 
             CI  : in    std_logic; 
             CO  : out   std_logic; 
             OFL : out   std_logic; 
             S   : out   std_logic_vector (15 downto 0));
   end component;
   
   component M2_1_HXILINX_Full_Data_Path
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component MUX16bit
      port ( sel : in    std_logic; 
             A   : in    std_logic_vector (15 downto 0); 
             B   : in    std_logic_vector (15 downto 0); 
             O   : out   std_logic_vector (15 downto 0));
   end component;
   
   component XOR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR4 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_0";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_1";
   attribute HU_SET of XLXI_3 : label is "XLXI_3_2";
   attribute HU_SET of XLXI_4 : label is "XLXI_4_3";
   attribute HU_SET of XLXI_5 : label is "XLXI_5_4";
begin
   CO <= CO_DUMMY;
   XLXI_1 : ADSU16_HXILINX_Full_Data_Path
      port map (A(15 downto 0)=>A(15 downto 0),
                ADD=>ADD,
                B(15 downto 0)=>B(15 downto 0),
                CI=>ADD_INV,
                CO=>CO_0,
                OFL=>OF_0,
                S(15 downto 0)=>SUM(15 downto 0));
   
   XLXI_2 : ADSU16_HXILINX_Full_Data_Path
      port map (A(15 downto 0)=>A(31 downto 16),
                ADD=>ADD,
                B(15 downto 0)=>B(31 downto 16),
                CI=>XLXN_44,
                CO=>CO_1,
                OFL=>OF_1,
                S(15 downto 0)=>SUM_Choise_1(15 downto 0));
   
   XLXI_3 : ADSU16_HXILINX_Full_Data_Path
      port map (A(15 downto 0)=>A(31 downto 16),
                ADD=>ADD,
                B(15 downto 0)=>B(31 downto 16),
                CI=>XLXN_48,
                CO=>CO_2,
                OFL=>OF_2,
                S(15 downto 0)=>SUM_Choise_2(15 downto 0));
   
   XLXI_4 : M2_1_HXILINX_Full_Data_Path
      port map (D0=>CO_1,
                D1=>CO_2,
                S0=>CO_0,
                O=>CO_DUMMY);
   
   XLXI_5 : M2_1_HXILINX_Full_Data_Path
      port map (D0=>OF_1,
                D1=>OF_2,
                S0=>CO_0,
                O=>OFL);
   
   XLXI_6 : MUX16bit
      port map (A(15 downto 0)=>SUM_Choise_1(15 downto 0),
                B(15 downto 0)=>SUM_Choise_2(15 downto 0),
                sel=>CO_0,
                O(15 downto 0)=>SUM(31 downto 16));
   
   XLXI_7 : XOR4
      port map (I0=>ADD_INV,
                I1=>CO_DUMMY,
                I2=>B(31),
                I3=>A(31),
                O=>NE_G);
   
   XLXI_9 : INV
      port map (I=>ADD,
                O=>ADD_INV);
   
   XLXI_11 : VCC
      port map (P=>XLXN_44);
   
   XLXI_12 : GND
      port map (G=>XLXN_48);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity ALU_MUSER_Full_Data_Path is
   port ( A       : in    std_logic_vector (31 downto 0); 
          ADD     : in    std_logic; 
          ALU_F   : in    std_logic_vector (2 downto 0); 
          B       : in    std_logic_vector (31 downto 0); 
          TEST    : in    std_logic; 
          ALU_Out : out   std_logic_vector (31 downto 0); 
          NE_G    : out   std_logic);
end ALU_MUSER_Full_Data_Path;

architecture BEHAVIORAL of ALU_MUSER_Full_Data_Path is
   attribute BOX_TYPE   : string ;
   signal ALU_SUM     : std_logic_vector (31 downto 0);
   signal Bitwise_OP  : std_logic_vector (31 downto 0);
   signal Bitwise_OP1 : std_logic_vector (31 downto 0);
   signal COMP        : std_logic_vector (31 downto 0);
   signal F           : std_logic_vector (2 downto 0);
   signal XLXN_9      : std_logic_vector (2 downto 0);
   signal XLXN_25     : std_logic;
   signal XLXN_35     : std_logic;
   signal XLXN_36     : std_logic;
   signal XLXN_147    : std_logic_vector (31 downto 0);
   signal XLXN_148    : std_logic_vector (31 downto 0);
   signal XLXN_151    : std_logic_vector (31 downto 0);
   signal XLXN_152    : std_logic_vector (31 downto 0);
   signal XLXN_163    : std_logic_vector (31 downto 0);
   signal NE_G_DUMMY  : std_logic;
   component AND2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B1 : component is "BLACK_BOX";
   
   component REG_ZERO_31
      port ( REG_Out : out   std_logic_vector (30 downto 0));
   end component;
   
   component C011
      port ( C011_Out : out   std_logic_vector (2 downto 0));
   end component;
   
   component MUX3BIT
      port ( sel : in    std_logic; 
             A0  : in    std_logic_vector (2 downto 0); 
             A1  : in    std_logic_vector (2 downto 0); 
             O   : out   std_logic_vector (2 downto 0));
   end component;
   
   component ALU_ADDER_MUSER_Full_Data_Path
      port ( ADD  : in    std_logic; 
             B    : in    std_logic_vector (31 downto 0); 
             A    : in    std_logic_vector (31 downto 0); 
             NE_G : out   std_logic; 
             SUM  : out   std_logic_vector (31 downto 0); 
             OFL  : out   std_logic; 
             CO   : out   std_logic);
   end component;
   
   component ALU_Comprator_MUSER_Full_Data_Path
      port ( S        : in    std_logic_vector (31 downto 0); 
             F        : in    std_logic_vector (2 downto 0); 
             NE_G     : in    std_logic; 
             COMP_OUT : out   std_logic);
   end component;
   
   component XOR32
      port ( A : in    std_logic_vector (31 downto 0); 
             B : in    std_logic_vector (31 downto 0); 
             O : out   std_logic_vector (31 downto 0));
   end component;
   
   component OR32
      port ( A : in    std_logic_vector (31 downto 0); 
             B : in    std_logic_vector (31 downto 0); 
             O : out   std_logic_vector (31 downto 0));
   end component;
   
   component AND32
      port ( A : in    std_logic_vector (31 downto 0); 
             B : in    std_logic_vector (31 downto 0); 
             O : out   std_logic_vector (31 downto 0));
   end component;
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component MUX32bit
      port ( sel : in    std_logic; 
             A   : in    std_logic_vector (31 downto 0); 
             B   : in    std_logic_vector (31 downto 0); 
             O   : out   std_logic_vector (31 downto 0));
   end component;
   
begin
   NE_G <= NE_G_DUMMY;
   XLXI_1 : AND2B1
      port map (I0=>TEST,
                I1=>F(0),
                O=>XLXN_25);
   
   XLXI_2 : REG_ZERO_31
      port map (REG_Out(30 downto 0)=>COMP(31 downto 1));
   
   XLXI_3 : C011
      port map (C011_Out(2 downto 0)=>XLXN_9(2 downto 0));
   
   XLXI_4 : MUX3BIT
      port map (A0(2 downto 0)=>ALU_F(2 downto 0),
                A1(2 downto 0)=>XLXN_9(2 downto 0),
                sel=>ADD,
                O(2 downto 0)=>F(2 downto 0));
   
   XLXI_11 : ALU_ADDER_MUSER_Full_Data_Path
      port map (A(31 downto 0)=>A(31 downto 0),
                ADD=>XLXN_25,
                B(31 downto 0)=>B(31 downto 0),
                CO=>XLXN_36,
                NE_G=>NE_G_DUMMY,
                OFL=>XLXN_35,
                SUM(31 downto 0)=>ALU_SUM(31 downto 0));
   
   XLXI_12 : ALU_Comprator_MUSER_Full_Data_Path
      port map (F(2 downto 0)=>F(2 downto 0),
                NE_G=>NE_G_DUMMY,
                S(31 downto 0)=>ALU_SUM(31 downto 0),
                COMP_OUT=>COMP(0));
   
   XLXI_13 : XOR32
      port map (A(31 downto 0)=>A(31 downto 0),
                B(31 downto 0)=>B(31 downto 0),
                O(31 downto 0)=>XLXN_147(31 downto 0));
   
   XLXI_16 : OR32
      port map (A(31 downto 0)=>A(31 downto 0),
                B(31 downto 0)=>B(31 downto 0),
                O(31 downto 0)=>XLXN_148(31 downto 0));
   
   XLXI_17 : AND32
      port map (A(31 downto 0)=>A(31 downto 0),
                B(31 downto 0)=>B(31 downto 0),
                O(31 downto 0)=>XLXN_151(31 downto 0));
   
   XLXI_45 : GND
      port map (G=>XLXN_35);
   
   XLXI_46 : GND
      port map (G=>XLXN_36);
   
   XLXI_52 : MUX32bit
      port map (A(31 downto 0)=>XLXN_147(31 downto 0),
                B(31 downto 0)=>XLXN_148(31 downto 0),
                sel=>F(0),
                O(31 downto 0)=>XLXN_152(31 downto 0));
   
   XLXI_53 : MUX32bit
      port map (A(31 downto 0)=>XLXN_152(31 downto 0),
                B(31 downto 0)=>XLXN_151(31 downto 0),
                sel=>F(1),
                O(31 downto 0)=>Bitwise_OP(31 downto 0));
   
   XLXI_57 : MUX32bit
      port map (A(31 downto 0)=>ALU_SUM(31 downto 0),
                B(31 downto 0)=>Bitwise_OP1(31 downto 0),
                sel=>F(2),
                O(31 downto 0)=>XLXN_163(31 downto 0));
   
   XLXI_58 : MUX32bit
      port map (A(31 downto 0)=>XLXN_163(31 downto 0),
                B(31 downto 0)=>COMP(31 downto 0),
                sel=>TEST,
                O(31 downto 0)=>ALU_Out(31 downto 0));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Full_IR_Inv_MUSER_Full_Data_Path is
   port ( CE        : in    std_logic; 
          clk       : in    std_logic; 
          DIn       : in    std_logic_vector (31 downto 0); 
          IS_ITYPE  : in    std_logic; 
          JLINK     : in    std_logic; 
          CO        : out   std_logic_vector (15 downto 0); 
          FunctionR : out   std_logic_vector (5 downto 0); 
          Imm       : out   std_logic_vector (15 downto 0); 
          Opcode    : out   std_logic_vector (5 downto 0); 
          RD        : out   std_logic_vector (4 downto 0); 
          RS1       : out   std_logic_vector (4 downto 0); 
          RS2       : out   std_logic_vector (4 downto 0));
end Full_IR_Inv_MUSER_Full_Data_Path;

architecture BEHAVIORAL of Full_IR_Inv_MUSER_Full_Data_Path is
   signal Instruction : std_logic_vector (31 downto 0);
   signal Imm_DUMMY   : std_logic_vector (15 downto 0);
   signal RS2_DUMMY   : std_logic_vector (4 downto 0);
   component BUF16
      port ( Din  : in    std_logic_vector (15 downto 0); 
             Dout : out   std_logic_vector (15 downto 0));
   end component;
   
   component BUF6
      port ( Din  : in    std_logic_vector (5 downto 0); 
             Dout : out   std_logic_vector (5 downto 0));
   end component;
   
   component Mux_IR
      port ( C       : in    std_logic; 
             J       : in    std_logic; 
             I       : in    std_logic; 
             A       : in    std_logic_vector (4 downto 0); 
             B       : in    std_logic_vector (4 downto 0); 
             Mux_Out : out   std_logic_vector (4 downto 0); 
             CO      : out   std_logic_vector (15 downto 0));
   end component;
   
   component REG32CE
      port ( CLK  : in    std_logic; 
             CE   : in    std_logic; 
             DIN  : in    std_logic_vector (31 downto 0); 
             DOUT : out   std_logic_vector (31 downto 0));
   end component;
   
   component BUF5
      port ( Din  : in    std_logic_vector (4 downto 0); 
             Dout : out   std_logic_vector (4 downto 0));
   end component;
   
begin
   Imm(15 downto 0) <= Imm_DUMMY(15 downto 0);
   RS2(4 downto 0) <= RS2_DUMMY(4 downto 0);
   XLXI_1 : BUF16
      port map (Din(15 downto 0)=>Instruction(15 downto 0),
                Dout(15 downto 0)=>Imm_DUMMY(15 downto 0));
   
   XLXI_5 : BUF6
      port map (Din(5 downto 0)=>Instruction(5 downto 0),
                Dout(5 downto 0)=>FunctionR(5 downto 0));
   
   XLXI_6 : Mux_IR
      port map (A(4 downto 0)=>Instruction(15 downto 11),
                B(4 downto 0)=>RS2_DUMMY(4 downto 0),
                C=>Imm_DUMMY(15),
                I=>IS_ITYPE,
                J=>JLINK,
                CO(15 downto 0)=>CO(15 downto 0),
                Mux_Out(4 downto 0)=>RD(4 downto 0));
   
   XLXI_7 : REG32CE
      port map (CE=>CE,
                CLK=>clk,
                DIN(31 downto 0)=>DIn(31 downto 0),
                DOUT(31 downto 0)=>Instruction(31 downto 0));
   
   XLXI_23 : BUF5
      port map (Din(4 downto 0)=>Instruction(20 downto 16),
                Dout(4 downto 0)=>RS2_DUMMY(4 downto 0));
   
   XLXI_24 : BUF5
      port map (Din(4 downto 0)=>Instruction(25 downto 21),
                Dout(4 downto 0)=>RS1(4 downto 0));
   
   XLXI_25 : BUF6
      port map (Din(5 downto 0)=>Instruction(31 downto 26),
                Dout(5 downto 0)=>Opcode(5 downto 0));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity FULL_DLX_GPR_opt2_MUSER_Full_Data_Path is
   port ( CARD   : in    std_logic_vector (4 downto 0); 
          GPR_WE : in    std_logic; 
          JLINK  : in    std_logic; 
          WE     : out   std_logic);
end FULL_DLX_GPR_opt2_MUSER_Full_Data_Path;

architecture BEHAVIORAL of FULL_DLX_GPR_opt2_MUSER_Full_Data_Path is
   attribute BOX_TYPE   : string ;
   signal XLXN_1 : std_logic;
   signal XLXN_4 : std_logic;
   component OR5
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR5 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
begin
   XLXI_1 : OR5
      port map (I0=>CARD(4),
                I1=>CARD(3),
                I2=>CARD(2),
                I3=>CARD(1),
                I4=>CARD(0),
                O=>XLXN_1);
   
   XLXI_2 : OR2
      port map (I0=>XLXN_1,
                I1=>JLINK,
                O=>XLXN_4);
   
   XLXI_3 : AND2
      port map (I0=>XLXN_4,
                I1=>GPR_WE,
                O=>WE);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Full_DLX_GPR_MUSER_Full_Data_Path is
   port ( Aadr    : in    std_logic_vector (4 downto 0); 
          Badr    : in    std_logic_vector (4 downto 0); 
          C       : in    std_logic_vector (31 downto 0); 
          Cadr    : in    std_logic_vector (4 downto 0); 
          clk     : in    std_logic; 
          Dadr    : in    std_logic_vector (4 downto 0); 
          GPR_WE  : in    std_logic; 
          JLINK   : in    std_logic; 
          A       : out   std_logic_vector (31 downto 0); 
          AEQZero : out   std_logic; 
          B       : out   std_logic_vector (31 downto 0); 
          D       : out   std_logic_vector (31 downto 0));
end Full_DLX_GPR_MUSER_Full_Data_Path;

architecture BEHAVIORAL of Full_DLX_GPR_MUSER_Full_Data_Path is
   signal Aadr_Or_Cadr : std_logic_vector (4 downto 0);
   signal Badr_Or_Cadr : std_logic_vector (4 downto 0);
   signal Dadr_Or_Cadr : std_logic_vector (4 downto 0);
   signal WE           : std_logic;
   signal A_DUMMY      : std_logic_vector (31 downto 0);
   component FULL_DLX_GPR_opt2_MUSER_Full_Data_Path
      port ( JLINK  : in    std_logic; 
             GPR_WE : in    std_logic; 
             CARD   : in    std_logic_vector (4 downto 0); 
             WE     : out   std_logic);
   end component;
   
   component AEQZ
      port ( Din   : in    std_logic_vector (31 downto 0); 
             A_eqz : out   std_logic);
   end component;
   
   component MUX5BIT
      port ( sel : in    std_logic; 
             A0  : in    std_logic_vector (4 downto 0); 
             A1  : in    std_logic_vector (4 downto 0); 
             O   : out   std_logic_vector (4 downto 0));
   end component;
   
   component RAM32X32S
      port ( ADD : in    std_logic_vector (4 downto 0); 
             CLK : in    std_logic; 
             D   : in    std_logic_vector (31 downto 0); 
             DO  : out   std_logic_vector (31 downto 0); 
             WE  : in    std_logic);
   end component;
   
begin
   A(31 downto 0) <= A_DUMMY(31 downto 0);
   XLXI_1 : FULL_DLX_GPR_opt2_MUSER_Full_Data_Path
      port map (CARD(4 downto 0)=>Cadr(4 downto 0),
                GPR_WE=>GPR_WE,
                JLINK=>JLINK,
                WE=>WE);
   
   XLXI_2 : AEQZ
      port map (Din(31 downto 0)=>A_DUMMY(31 downto 0),
                A_eqz=>AEQZero);
   
   XLXI_3 : MUX5BIT
      port map (A0(4 downto 0)=>Aadr(4 downto 0),
                A1(4 downto 0)=>Cadr(4 downto 0),
                sel=>WE,
                O(4 downto 0)=>Aadr_Or_Cadr(4 downto 0));
   
   XLXI_4 : MUX5BIT
      port map (A0(4 downto 0)=>Badr(4 downto 0),
                A1(4 downto 0)=>Cadr(4 downto 0),
                sel=>WE,
                O(4 downto 0)=>Badr_Or_Cadr(4 downto 0));
   
   XLXI_5 : MUX5BIT
      port map (A0(4 downto 0)=>Dadr(4 downto 0),
                A1(4 downto 0)=>Cadr(4 downto 0),
                sel=>WE,
                O(4 downto 0)=>Dadr_Or_Cadr(4 downto 0));
   
   XLXI_87 : RAM32X32S
      port map (ADD(4 downto 0)=>Aadr_Or_Cadr(4 downto 0),
                CLK=>clk,
                D(31 downto 0)=>C(31 downto 0),
                WE=>WE,
                DO(31 downto 0)=>A_DUMMY(31 downto 0));
   
   XLXI_88 : RAM32X32S
      port map (ADD(4 downto 0)=>Badr_Or_Cadr(4 downto 0),
                CLK=>clk,
                D(31 downto 0)=>C(31 downto 0),
                WE=>WE,
                DO(31 downto 0)=>B(31 downto 0));
   
   XLXI_89 : RAM32X32S
      port map (ADD(4 downto 0)=>Dadr_Or_Cadr(4 downto 0),
                CLK=>clk,
                D(31 downto 0)=>C(31 downto 0),
                WE=>WE,
                DO(31 downto 0)=>D(31 downto 0));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Full_Data_Path is
   port ( ACK_N     : in    std_logic; 
          clk       : in    std_logic; 
          DD        : in    std_logic_vector (4 downto 0); 
          DI        : in    std_logic_vector (31 downto 0); 
          reset     : in    std_logic; 
          STEP_EN   : in    std_logic; 
          ADD       : out   std_logic; 
          AO        : out   std_logic_vector (31 downto 0); 
          AS_N      : out   std_logic; 
          A_EN      : out   std_logic; 
          A_sel     : out   std_logic; 
          BUSY      : out   std_logic; 
          B_EN      : out   std_logic; 
          C_EN      : out   std_logic; 
          D         : out   std_logic_vector (31 downto 0); 
          DINT_sel  : out   std_logic; 
          DLX_state : out   std_logic_vector (4 downto 0); 
          DO        : out   std_logic_vector (31 downto 0); 
          FUNCTIONR : out   std_logic_vector (5 downto 0); 
          GPR_WE    : out   std_logic; 
          IN_INIT   : out   std_logic; 
          IR_CE     : out   std_logic; 
          IS_ITYPE  : out   std_logic; 
          JLINK     : out   std_logic; 
          Mac_State : out   std_logic_vector (1 downto 0); 
          MAR_EN    : out   std_logic; 
          MDR_EN    : out   std_logic; 
          MDR_sel   : out   std_logic; 
          MR        : out   std_logic; 
          MW        : out   std_logic; 
          PC_STEP   : out   std_logic; 
          SHIFT_EN  : out   std_logic; 
          stop_n    : out   std_logic; 
          S1_sel    : out   std_logic_vector (1 downto 0); 
          S2_sel    : out   std_logic_vector (1 downto 0); 
          TEST      : out   std_logic; 
          WR_N      : out   std_logic);
end Full_Data_Path;

architecture BEHAVIORAL of Full_Data_Path is
   attribute BOX_TYPE   : string ;
   signal A               : std_logic_vector (31 downto 0);
   signal AEQZ            : std_logic;
   signal ALU_OUT         : std_logic_vector (31 downto 0);
   signal AMUX_Out        : std_logic_vector (31 downto 0);
   signal A_GPR           : std_logic_vector (31 downto 0);
   signal B               : std_logic_vector (31 downto 0);
   signal B_GPR           : std_logic_vector (31 downto 0);
   signal C               : std_logic_vector (31 downto 0);
   signal DINT            : std_logic_vector (31 downto 0);
   signal Immediate       : std_logic_vector (31 downto 0);
   signal MAR_O           : std_logic_vector (31 downto 0);
   signal MDR_In          : std_logic_vector (31 downto 0);
   signal OPCODE          : std_logic_vector (5 downto 0);
   signal OP_OR_FUNC      : std_logic_vector (2 downto 0);
   signal PC_OUT          : std_logic_vector (31 downto 0);
   signal RD              : std_logic_vector (4 downto 0);
   signal RS1             : std_logic_vector (4 downto 0);
   signal RS2             : std_logic_vector (4 downto 0);
   signal SHIFT_Out       : std_logic_vector (31 downto 0);
   signal S1_O            : std_logic_vector (31 downto 0);
   signal S2_O            : std_logic_vector (31 downto 0);
   signal XLXN_208        : std_logic;
   signal Zero31_one      : std_logic_vector (31 downto 0);
   signal Zero32          : std_logic_vector (31 downto 0);
   signal TEST_DUMMY      : std_logic;
   signal DINT_sel_DUMMY  : std_logic;
   signal ADD_DUMMY       : std_logic;
   signal DO_DUMMY        : std_logic_vector (31 downto 0);
   signal IS_ITYPE_DUMMY  : std_logic;
   signal S2_sel_DUMMY    : std_logic_vector (1 downto 0);
   signal SHIFT_EN_DUMMY  : std_logic;
   signal A_EN_DUMMY      : std_logic;
   signal IR_CE_DUMMY     : std_logic;
   signal A_sel_DUMMY     : std_logic;
   signal B_EN_DUMMY      : std_logic;
   signal GPR_WE_DUMMY    : std_logic;
   signal PC_STEP_DUMMY   : std_logic;
   signal JLINK_DUMMY     : std_logic;
   signal S1_sel_DUMMY    : std_logic_vector (1 downto 0);
   signal C_EN_DUMMY      : std_logic;
   signal FUNCTIONR_DUMMY : std_logic_vector (5 downto 0);
   signal MDR_sel_DUMMY   : std_logic;
   signal MAR_EN_DUMMY    : std_logic;
   signal MDR_EN_DUMMY    : std_logic;
   component MUX32bit
      port ( sel : in    std_logic; 
             A   : in    std_logic_vector (31 downto 0); 
             B   : in    std_logic_vector (31 downto 0); 
             O   : out   std_logic_vector (31 downto 0));
   end component;
   
   component REG32CE
      port ( CLK  : in    std_logic; 
             CE   : in    std_logic; 
             DIN  : in    std_logic_vector (31 downto 0); 
             DOUT : out   std_logic_vector (31 downto 0));
   end component;
   
   component REG_A_B_C_MUSER_Full_Data_Path
      port ( clk         : in    std_logic; 
             ce          : in    std_logic; 
             REG_ABC_In  : in    std_logic_vector (31 downto 0); 
             REG_ABC_Out : out   std_logic_vector (31 downto 0));
   end component;
   
   component MUX4_32bit
      port ( A0  : in    std_logic_vector (31 downto 0); 
             A1  : in    std_logic_vector (31 downto 0); 
             A2  : in    std_logic_vector (31 downto 0); 
             A3  : in    std_logic_vector (31 downto 0); 
             sel : in    std_logic_vector (1 downto 0); 
             O   : out   std_logic_vector (31 downto 0));
   end component;
   
   component REG_ZERO_31
      port ( REG_Out : out   std_logic_vector (30 downto 0));
   end component;
   
   component REG_ZERO_32
      port ( REG_ZERO_Out : out   std_logic_vector (31 downto 0));
   end component;
   
   component Full_DLX_GPR_MUSER_Full_Data_Path
      port ( clk     : in    std_logic; 
             C       : in    std_logic_vector (31 downto 0); 
             Aadr    : in    std_logic_vector (4 downto 0); 
             Badr    : in    std_logic_vector (4 downto 0); 
             Cadr    : in    std_logic_vector (4 downto 0); 
             Dadr    : in    std_logic_vector (4 downto 0); 
             GPR_WE  : in    std_logic; 
             JLINK   : in    std_logic; 
             A       : out   std_logic_vector (31 downto 0); 
             B       : out   std_logic_vector (31 downto 0); 
             D       : out   std_logic_vector (31 downto 0); 
             AEQZero : out   std_logic);
   end component;
   
   component REG_PC_MUSER_Full_Data_Path
      port ( clk    : in    std_logic; 
             ce     : in    std_logic; 
             reset  : in    std_logic; 
             PC_IN  : in    std_logic_vector (31 downto 0); 
             PC_Out : out   std_logic_vector (31 downto 0));
   end component;
   
   component SHIFTER
      port ( shift : in    std_logic; 
             right : in    std_logic; 
             DIN   : in    std_logic_vector (31 downto 0); 
             DOUT  : out   std_logic_vector (31 downto 0));
   end component;
   
   component MUX3BIT
      port ( sel : in    std_logic; 
             A0  : in    std_logic_vector (2 downto 0); 
             A1  : in    std_logic_vector (2 downto 0); 
             O   : out   std_logic_vector (2 downto 0));
   end component;
   
   component ALU_MUSER_Full_Data_Path
      port ( A       : in    std_logic_vector (31 downto 0); 
             B       : in    std_logic_vector (31 downto 0); 
             TEST    : in    std_logic; 
             ALU_F   : in    std_logic_vector (2 downto 0); 
             ADD     : in    std_logic; 
             ALU_Out : out   std_logic_vector (31 downto 0); 
             NE_G    : out   std_logic);
   end component;
   
   component MMU
      port ( MMU_In  : in    std_logic_vector (31 downto 0); 
             MMU_Out : out   std_logic_vector (31 downto 0));
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component Full_IR_Inv_MUSER_Full_Data_Path
      port ( clk       : in    std_logic; 
             CE        : in    std_logic; 
             DIn       : in    std_logic_vector (31 downto 0); 
             JLINK     : in    std_logic; 
             IS_ITYPE  : in    std_logic; 
             RS2       : out   std_logic_vector (4 downto 0); 
             RS1       : out   std_logic_vector (4 downto 0); 
             FunctionR : out   std_logic_vector (5 downto 0); 
             Imm       : out   std_logic_vector (15 downto 0); 
             Opcode    : out   std_logic_vector (5 downto 0); 
             CO        : out   std_logic_vector (15 downto 0); 
             RD        : out   std_logic_vector (4 downto 0));
   end component;
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component DLX_Full_Control_MUSER_Full_Data_Path
      port ( clk       : in    std_logic; 
             reset     : in    std_logic; 
             ACK_N     : in    std_logic; 
             STEP_EN   : in    std_logic; 
             AEQZ      : in    std_logic; 
             OPCODE    : in    std_logic_vector (5 downto 0); 
             imm       : in    std_logic_vector (15 downto 0); 
             BUSY      : out   std_logic; 
             AS_N      : out   std_logic; 
             WR_N      : out   std_logic; 
             Mac_State : out   std_logic_vector (1 downto 0); 
             MR        : out   std_logic; 
             MW        : out   std_logic; 
             IR_CE     : out   std_logic; 
             PC_STEP   : out   std_logic; 
             GPR_WE    : out   std_logic; 
             A_EN      : out   std_logic; 
             B_EN      : out   std_logic; 
             C_EN      : out   std_logic; 
             IN_INIT   : out   std_logic; 
             MDR_EN    : out   std_logic; 
             A_sel     : out   std_logic; 
             DINT_sel  : out   std_logic; 
             JLINK     : out   std_logic; 
             TEST      : out   std_logic; 
             MAR_EN    : out   std_logic; 
             MDR_sel   : out   std_logic; 
             SHIFT     : out   std_logic; 
             S1_sel    : out   std_logic_vector (1 downto 0); 
             ADD       : out   std_logic; 
             S2_sel    : out   std_logic_vector (1 downto 0); 
             DLX_State : out   std_logic_vector (4 downto 0); 
             ITYPE     : out   std_logic; 
             stop_n    : out   std_logic);
   end component;
   
begin
   ADD <= ADD_DUMMY;
   A_EN <= A_EN_DUMMY;
   A_sel <= A_sel_DUMMY;
   B_EN <= B_EN_DUMMY;
   C_EN <= C_EN_DUMMY;
   DINT_sel <= DINT_sel_DUMMY;
   DO(31 downto 0) <= DO_DUMMY(31 downto 0);
   FUNCTIONR(5 downto 0) <= FUNCTIONR_DUMMY(5 downto 0);
   GPR_WE <= GPR_WE_DUMMY;
   IR_CE <= IR_CE_DUMMY;
   IS_ITYPE <= IS_ITYPE_DUMMY;
   JLINK <= JLINK_DUMMY;
   MAR_EN <= MAR_EN_DUMMY;
   MDR_EN <= MDR_EN_DUMMY;
   MDR_sel <= MDR_sel_DUMMY;
   PC_STEP <= PC_STEP_DUMMY;
   SHIFT_EN <= SHIFT_EN_DUMMY;
   S1_sel(1 downto 0) <= S1_sel_DUMMY(1 downto 0);
   S2_sel(1 downto 0) <= S2_sel_DUMMY(1 downto 0);
   TEST <= TEST_DUMMY;
   AMUX : MUX32bit
      port map (A(31 downto 0)=>PC_OUT(31 downto 0),
                B(31 downto 0)=>MAR_O(31 downto 0),
                sel=>A_sel_DUMMY,
                O(31 downto 0)=>AMUX_Out(31 downto 0));
   
   DINT_MUX : MUX32bit
      port map (A(31 downto 0)=>ALU_OUT(31 downto 0),
                B(31 downto 0)=>SHIFT_Out(31 downto 0),
                sel=>DINT_sel_DUMMY,
                O(31 downto 0)=>DINT(31 downto 0));
   
   MAR : REG32CE
      port map (CE=>MAR_EN_DUMMY,
                CLK=>clk,
                DIN(31 downto 0)=>DINT(31 downto 0),
                DOUT(31 downto 0)=>MAR_O(31 downto 0));
   
   MDR : REG32CE
      port map (CE=>MDR_EN_DUMMY,
                CLK=>clk,
                DIN(31 downto 0)=>MDR_In(31 downto 0),
                DOUT(31 downto 0)=>DO_DUMMY(31 downto 0));
   
   Register_A : REG_A_B_C_MUSER_Full_Data_Path
      port map (ce=>A_EN_DUMMY,
                clk=>clk,
                REG_ABC_In(31 downto 0)=>A_GPR(31 downto 0),
                REG_ABC_Out(31 downto 0)=>A(31 downto 0));
   
   Register_B : REG_A_B_C_MUSER_Full_Data_Path
      port map (ce=>B_EN_DUMMY,
                clk=>clk,
                REG_ABC_In(31 downto 0)=>B_GPR(31 downto 0),
                REG_ABC_Out(31 downto 0)=>B(31 downto 0));
   
   Register_C : REG_A_B_C_MUSER_Full_Data_Path
      port map (ce=>C_EN_DUMMY,
                clk=>clk,
                REG_ABC_In(31 downto 0)=>DINT(31 downto 0),
                REG_ABC_Out(31 downto 0)=>C(31 downto 0));
   
   S1_MUX : MUX4_32bit
      port map (A0(31 downto 0)=>PC_OUT(31 downto 0),
                A1(31 downto 0)=>A(31 downto 0),
                A2(31 downto 0)=>B(31 downto 0),
                A3(31 downto 0)=>DO_DUMMY(31 downto 0),
                sel(1 downto 0)=>S1_sel_DUMMY(1 downto 0),
                O(31 downto 0)=>S1_O(31 downto 0));
   
   S2_MUX : MUX4_32bit
      port map (A0(31 downto 0)=>B(31 downto 0),
                A1(31 downto 0)=>Immediate(31 downto 0),
                A2(31 downto 0)=>Zero32(31 downto 0),
                A3(31 downto 0)=>Zero31_one(31 downto 0),
                sel(1 downto 0)=>S2_sel_DUMMY(1 downto 0),
                O(31 downto 0)=>S2_O(31 downto 0));
   
   XLXI_1 : REG_ZERO_31
      port map (REG_Out(30 downto 0)=>Zero31_one(31 downto 1));
   
   XLXI_2 : REG_ZERO_32
      port map (REG_ZERO_Out(31 downto 0)=>Zero32(31 downto 0));
   
   XLXI_4 : Full_DLX_GPR_MUSER_Full_Data_Path
      port map (Aadr(4 downto 0)=>RS1(4 downto 0),
                Badr(4 downto 0)=>RS2(4 downto 0),
                C(31 downto 0)=>C(31 downto 0),
                Cadr(4 downto 0)=>RD(4 downto 0),
                clk=>clk,
                Dadr(4 downto 0)=>DD(4 downto 0),
                GPR_WE=>GPR_WE_DUMMY,
                JLINK=>JLINK_DUMMY,
                A(31 downto 0)=>A_GPR(31 downto 0),
                AEQZero=>AEQZ,
                B(31 downto 0)=>B_GPR(31 downto 0),
                D(31 downto 0)=>D(31 downto 0));
   
   XLXI_7 : REG_PC_MUSER_Full_Data_Path
      port map (ce=>PC_STEP_DUMMY,
                clk=>clk,
                PC_IN(31 downto 0)=>DINT(31 downto 0),
                reset=>reset,
                PC_Out(31 downto 0)=>PC_OUT(31 downto 0));
   
   XLXI_8 : SHIFTER
      port map (DIN(31 downto 0)=>S1_O(31 downto 0),
                right=>FUNCTIONR_DUMMY(1),
                shift=>SHIFT_EN_DUMMY,
                DOUT(31 downto 0)=>SHIFT_Out(31 downto 0));
   
   XLXI_9 : MUX32bit
      port map (A(31 downto 0)=>DINT(31 downto 0),
                B(31 downto 0)=>DI(31 downto 0),
                sel=>MDR_sel_DUMMY,
                O(31 downto 0)=>MDR_In(31 downto 0));
   
   XLXI_10 : MUX3BIT
      port map (A0(2 downto 0)=>FUNCTIONR_DUMMY(2 downto 0),
                A1(2 downto 0)=>OPCODE(2 downto 0),
                sel=>IS_ITYPE_DUMMY,
                O(2 downto 0)=>OP_OR_FUNC(2 downto 0));
   
   XLXI_15 : ALU_MUSER_Full_Data_Path
      port map (A(31 downto 0)=>S1_O(31 downto 0),
                ADD=>ADD_DUMMY,
                ALU_F(2 downto 0)=>OP_OR_FUNC(2 downto 0),
                B(31 downto 0)=>S2_O(31 downto 0),
                TEST=>TEST_DUMMY,
                ALU_Out(31 downto 0)=>ALU_OUT(31 downto 0),
                NE_G=>XLXN_208);
   
   XLXI_16 : MMU
      port map (MMU_In(31 downto 0)=>AMUX_Out(31 downto 0),
                MMU_Out(31 downto 0)=>AO(31 downto 0));
   
   XLXI_115 : VCC
      port map (P=>Zero31_one(0));
   
   XLXI_118 : Full_IR_Inv_MUSER_Full_Data_Path
      port map (CE=>IR_CE_DUMMY,
                clk=>clk,
                DIn(31 downto 0)=>DI(31 downto 0),
                IS_ITYPE=>IS_ITYPE_DUMMY,
                JLINK=>JLINK_DUMMY,
                CO(15 downto 0)=>Immediate(31 downto 16),
                FunctionR(5 downto 0)=>FUNCTIONR_DUMMY(5 downto 0),
                Imm(15 downto 0)=>Immediate(15 downto 0),
                Opcode(5 downto 0)=>OPCODE(5 downto 0),
                RD(4 downto 0)=>RD(4 downto 0),
                RS1(4 downto 0)=>RS1(4 downto 0),
                RS2(4 downto 0)=>RS2(4 downto 0));
   
   XLXI_152 : GND
      port map (G=>XLXN_208);
   
   XLXI_162 : DLX_Full_Control_MUSER_Full_Data_Path
      port map (ACK_N=>ACK_N,
                AEQZ=>AEQZ,
                clk=>clk,
                imm(15 downto 0)=>Immediate(15 downto 0),
                OPCODE(5 downto 0)=>OPCODE(5 downto 0),
                reset=>reset,
                STEP_EN=>STEP_EN,
                ADD=>ADD_DUMMY,
                AS_N=>AS_N,
                A_EN=>A_EN_DUMMY,
                A_sel=>A_sel_DUMMY,
                BUSY=>BUSY,
                B_EN=>B_EN_DUMMY,
                C_EN=>C_EN_DUMMY,
                DINT_sel=>DINT_sel_DUMMY,
                DLX_State(4 downto 0)=>DLX_state(4 downto 0),
                GPR_WE=>GPR_WE_DUMMY,
                IN_INIT=>IN_INIT,
                IR_CE=>IR_CE_DUMMY,
                ITYPE=>IS_ITYPE_DUMMY,
                JLINK=>JLINK_DUMMY,
                Mac_State(1 downto 0)=>Mac_State(1 downto 0),
                MAR_EN=>MAR_EN_DUMMY,
                MDR_EN=>MDR_EN_DUMMY,
                MDR_sel=>MDR_sel_DUMMY,
                MR=>MR,
                MW=>MW,
                PC_STEP=>PC_STEP_DUMMY,
                SHIFT=>SHIFT_EN_DUMMY,
                stop_n=>stop_n,
                S1_sel(1 downto 0)=>S1_sel_DUMMY(1 downto 0),
                S2_sel(1 downto 0)=>S2_sel_DUMMY(1 downto 0),
                TEST=>TEST_DUMMY,
                WR_N=>WR_N);
   
end BEHAVIORAL;


