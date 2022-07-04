--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : ALU_ADDER.vhf
-- /___/   /\     Timestamp : 06/09/2022 18:52:11
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl "F:/semesterB2021/computer artitichture Lab/exp7/B6/Home_S251/ALU_ADDER.vhf" -w "F:/semesterB2021/computer artitichture Lab/exp7/B6/Home_S251/ALU_ADDER.sch"
--Design Name: ALU_ADDER
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL M2_1_HXILINX_ALU_ADDER -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M2_1_HXILINX_ALU_ADDER is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    S0  : in std_logic
  );
end M2_1_HXILINX_ALU_ADDER;

architecture M2_1_HXILINX_ALU_ADDER_V of M2_1_HXILINX_ALU_ADDER is
begin
  process (D0, D1, S0)
  begin
    case S0 is
    when '0' => O <= D0;
    when '1' => O <= D1;
    when others => NULL;
    end case;
    end process; 
end M2_1_HXILINX_ALU_ADDER_V;
----- CELL ADSU16_HXILINX_ALU_ADDER -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity ADSU16_HXILINX_ALU_ADDER is
port(
    CO   : out std_logic;
    OFL  : out std_logic;
    S    : out std_logic_vector(15 downto 0);

    A    : in std_logic_vector(15 downto 0);
    ADD  : in std_logic;
    B    : in std_logic_vector(15 downto 0);
    CI   : in std_logic
  );
end ADSU16_HXILINX_ALU_ADDER;

architecture ADSU16_HXILINX_ALU_ADDER_V of ADSU16_HXILINX_ALU_ADDER is

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
  
end ADSU16_HXILINX_ALU_ADDER_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity ALU_ADDER is
   port ( A    : in    std_logic_vector (31 downto 0); 
          add  : in    std_logic; 
          B    : in    std_logic_vector (31 downto 0); 
          CO   : out   std_logic; 
          NE_G : out   std_logic; 
          OFL  : out   std_logic; 
          SUM  : out   std_logic_vector (31 downto 0));
end ALU_ADDER;

architecture BEHAVIORAL of ALU_ADDER is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal CO_0        : std_logic;
   signal CO_1        : std_logic;
   signal CO_2        : std_logic;
   signal SUB         : std_logic;
   signal SUM_option1 : std_logic_vector (15 downto 0);
   signal SUM_option2 : std_logic_vector (15 downto 0);
   signal XLXN_55     : std_logic;
   signal XLXN_59     : std_logic;
   signal CO_DUMMY    : std_logic;
   component ADSU16_HXILINX_ALU_ADDER
      port ( A   : in    std_logic_vector (15 downto 0); 
             ADD : in    std_logic; 
             B   : in    std_logic_vector (15 downto 0); 
             CI  : in    std_logic; 
             CO  : out   std_logic; 
             OFL : out   std_logic; 
             S   : out   std_logic_vector (15 downto 0));
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
   
   component M2_1_HXILINX_ALU_ADDER
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
   
   attribute HU_SET of LSB0 : label is "LSB0_0";
   attribute HU_SET of MSB0 : label is "MSB0_1";
   attribute HU_SET of MSB1 : label is "MSB1_2";
   attribute HU_SET of XLXI_22 : label is "XLXI_22_3";
begin
   CO <= CO_DUMMY;
   LSB0 : ADSU16_HXILINX_ALU_ADDER
      port map (A(15 downto 0)=>A(15 downto 0),
                ADD=>add,
                B(15 downto 0)=>B(15 downto 0),
                CI=>SUB,
                CO=>CO_0,
                OFL=>open,
                S(15 downto 0)=>SUM(15 downto 0));
   
   MSB0 : ADSU16_HXILINX_ALU_ADDER
      port map (A(15 downto 0)=>A(31 downto 16),
                ADD=>add,
                B(15 downto 0)=>B(31 downto 16),
                CI=>XLXN_55,
                CO=>CO_1,
                OFL=>open,
                S(15 downto 0)=>SUM_option1(15 downto 0));
   
   MSB1 : ADSU16_HXILINX_ALU_ADDER
      port map (A(15 downto 0)=>A(31 downto 16),
                ADD=>add,
                B(15 downto 0)=>B(31 downto 16),
                CI=>XLXN_59,
                CO=>CO_2,
                OFL=>open,
                S(15 downto 0)=>SUM_option2(15 downto 0));
   
   XLXI_7 : XOR4
      port map (I0=>SUB,
                I1=>CO_DUMMY,
                I2=>B(31),
                I3=>A(31),
                O=>NE_G);
   
   XLXI_19 : INV
      port map (I=>add,
                O=>SUB);
   
   XLXI_20 : VCC
      port map (P=>XLXN_59);
   
   XLXI_21 : GND
      port map (G=>XLXN_55);
   
   XLXI_22 : M2_1_HXILINX_ALU_ADDER
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


