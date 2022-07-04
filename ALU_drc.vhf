--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : ALU_drc.vhf
-- /___/   /\     Timestamp : 06/09/2022 18:48:15
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: F:\ProgramData\Xilinx\14.7\ISE_DS\ISE\bin\nt64\unwrapped\sch2hdl.exe -intstyle ise -family spartan6 -flat -suppress -vhdl ALU_drc.vhf -w "F:/semesterB2021/computer artitichture Lab/exp7/B6/Home_S251/ALU.sch"
--Design Name: ALU
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL M2_1_HXILINX_ALU -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M2_1_HXILINX_ALU is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    S0  : in std_logic
  );
end M2_1_HXILINX_ALU;

architecture M2_1_HXILINX_ALU_V of M2_1_HXILINX_ALU is
begin
  process (D0, D1, S0)
  begin
    case S0 is
    when '0' => O <= D0;
    when '1' => O <= D1;
    when others => NULL;
    end case;
    end process; 
end M2_1_HXILINX_ALU_V;
----- CELL ADSU16_HXILINX_ALU -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity ADSU16_HXILINX_ALU is
port(
    CO   : out std_logic;
    OFL  : out std_logic;
    S    : out std_logic_vector(15 downto 0);

    A    : in std_logic_vector(15 downto 0);
    ADD  : in std_logic;
    B    : in std_logic_vector(15 downto 0);
    CI   : in std_logic
  );
end ADSU16_HXILINX_ALU;

architecture ADSU16_HXILINX_ALU_V of ADSU16_HXILINX_ALU is

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
  
end ADSU16_HXILINX_ALU_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity ALU_Comprator_MUSER_ALU is
   port ( F        : in    std_logic_vector (2 downto 0); 
          NE_G     : in    std_logic; 
          S        : in    std_logic_vector (31 downto 0); 
          COMP_OUT : out   std_logic);
end ALU_Comprator_MUSER_ALU;

architecture BEHAVIORAL of ALU_Comprator_MUSER_ALU is
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

entity ALU_ADDER_MUSER_ALU is
   port ( A    : in    std_logic_vector (31 downto 0); 
          add  : in    std_logic; 
          B    : in    std_logic_vector (31 downto 0); 
          CO   : out   std_logic; 
          NE_G : out   std_logic; 
          OFL  : out   std_logic; 
          SUM  : out   std_logic_vector (31 downto 0));
end ALU_ADDER_MUSER_ALU;

architecture BEHAVIORAL of ALU_ADDER_MUSER_ALU is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal CO_0        : std_logic;
   signal CO_1        : std_logic;
   signal CO_2        : std_logic;
   signal SUB         : std_logic;
   signal SUM_option1 : std_logic_vector (15 downto 0);
   signal SUM_option2 : std_logic_vector (15 downto 0);
   signal XLXN_55     : std_logic;
   signal XLXN_59     : std_logic;
   signal CO_DUMMY    : std_logic;
   component XOR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR4 : component is "BLACK_BOX";
   
   component ADSU16_HXILINX_ALU
      port ( A   : in    std_logic_vector (15 downto 0); 
             ADD : in    std_logic; 
             B   : in    std_logic_vector (15 downto 0); 
             CI  : in    std_logic; 
             CO  : out   std_logic; 
             OFL : out   std_logic; 
             S   : out   std_logic_vector (15 downto 0));
   end component;
   
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
   
   component M2_1_HXILINX_ALU
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
   
   attribute HU_SET of XLXI_16 : label is "XLXI_16_0";
   attribute HU_SET of XLXI_17 : label is "XLXI_17_1";
   attribute HU_SET of XLXI_18 : label is "XLXI_18_2";
   attribute HU_SET of XLXI_22 : label is "XLXI_22_3";
begin
   CO <= CO_DUMMY;
   XLXI_7 : XOR4
      port map (I0=>SUB,
                I1=>CO_DUMMY,
                I2=>B(31),
                I3=>A(31),
                O=>NE_G);
   
   XLXI_16 : ADSU16_HXILINX_ALU
      port map (A(15 downto 0)=>A(15 downto 0),
                ADD=>add,
                B(15 downto 0)=>B(15 downto 0),
                CI=>SUB,
                CO=>CO_0,
                OFL=>open,
                S(15 downto 0)=>SUM(15 downto 0));
   
   XLXI_17 : ADSU16_HXILINX_ALU
      port map (A(15 downto 0)=>A(31 downto 16),
                ADD=>add,
                B(15 downto 0)=>B(31 downto 16),
                CI=>XLXN_55,
                CO=>CO_1,
                OFL=>open,
                S(15 downto 0)=>SUM_option1(15 downto 0));
   
   XLXI_18 : ADSU16_HXILINX_ALU
      port map (A(15 downto 0)=>A(31 downto 16),
                ADD=>add,
                B(15 downto 0)=>B(31 downto 16),
                CI=>XLXN_59,
                CO=>CO_2,
                OFL=>open,
                S(15 downto 0)=>SUM_option2(15 downto 0));
   
   XLXI_19 : INV
      port map (I=>add,
                O=>SUB);
   
   XLXI_20 : VCC
      port map (P=>XLXN_59);
   
   XLXI_21 : GND
      port map (G=>XLXN_55);
   
   XLXI_22 : M2_1_HXILINX_ALU
      port map (D0=>CO_1,
                D1=>CO_2,
                S0=>CO_0,
                O=>CO_DUMMY);
   
   XLXI_24 : MUX16bit
      port map (A(15 downto 0)=>SUM_option1(15 downto 0),
                B(15 downto 0)=>SUM_option2(15 downto 0),
                sel=>CO_0,
                O(15 downto 0)=>SUM(31 downto 16));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity ALU is
   port ( A       : in    std_logic_vector (31 downto 0); 
          ADD     : in    std_logic; 
          ALU_F   : in    std_logic_vector (2 downto 0); 
          B       : in    std_logic_vector (31 downto 0); 
          TEST    : in    std_logic; 
          ALU_Out : out   std_logic_vector (31 downto 0); 
          NE_G    : out   std_logic);
end ALU;

architecture BEHAVIORAL of ALU is
   attribute BOX_TYPE   : string ;
   signal ADD_inn    : std_logic;
   signal ALU_SUM    : std_logic_vector (31 downto 0);
   signal Bitwise_OP : std_logic_vector (31 downto 0);
   signal COMP       : std_logic_vector (31 downto 0);
   signal F          : std_logic_vector (2 downto 0);
   signal XLXN_9     : std_logic_vector (2 downto 0);
   signal XLXN_35    : std_logic;
   signal XLXN_36    : std_logic;
   signal XLXN_147   : std_logic_vector (31 downto 0);
   signal XLXN_148   : std_logic_vector (31 downto 0);
   signal XLXN_151   : std_logic_vector (31 downto 0);
   signal XLXN_152   : std_logic_vector (31 downto 0);
   signal XLXN_163   : std_logic_vector (31 downto 0);
   signal NE_G_DUMMY : std_logic;
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
   
   component ALU_ADDER_MUSER_ALU
      port ( ADD  : in    std_logic; 
             B    : in    std_logic_vector (31 downto 0); 
             A    : in    std_logic_vector (31 downto 0); 
             NE_G : out   std_logic; 
             SUM  : out   std_logic_vector (31 downto 0); 
             OFL  : out   std_logic; 
             CO   : out   std_logic);
   end component;
   
   component ALU_Comprator_MUSER_ALU
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
   
   component NOR2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NOR2B1 : component is "BLACK_BOX";
   
begin
   NE_G <= NE_G_DUMMY;
   XLXI_2 : REG_ZERO_31
      port map (REG_Out(30 downto 0)=>COMP(31 downto 1));
   
   XLXI_3 : C011
      port map (C011_Out(2 downto 0)=>XLXN_9(2 downto 0));
   
   XLXI_4 : MUX3BIT
      port map (A0(2 downto 0)=>ALU_F(2 downto 0),
                A1(2 downto 0)=>XLXN_9(2 downto 0),
                sel=>ADD,
                O(2 downto 0)=>F(2 downto 0));
   
   XLXI_11 : ALU_ADDER_MUSER_ALU
      port map (A(31 downto 0)=>B(31 downto 0),
                ADD=>ADD_inn,
                B(31 downto 0)=>A(31 downto 0),
                CO=>XLXN_36,
                NE_G=>NE_G_DUMMY,
                OFL=>XLXN_35,
                SUM(31 downto 0)=>ALU_SUM(31 downto 0));
   
   XLXI_12 : ALU_Comprator_MUSER_ALU
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
                B(31 downto 0)=>Bitwise_OP(31 downto 0),
                sel=>F(2),
                O(31 downto 0)=>XLXN_163(31 downto 0));
   
   XLXI_58 : MUX32bit
      port map (A(31 downto 0)=>XLXN_163(31 downto 0),
                B(31 downto 0)=>COMP(31 downto 0),
                sel=>TEST,
                O(31 downto 0)=>ALU_Out(31 downto 0));
   
   XLXI_73 : NOR2B1
      port map (I0=>F(0),
                I1=>TEST,
                O=>ADD_inn);
   
end BEHAVIORAL;


