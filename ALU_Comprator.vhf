--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : ALU_Comprator.vhf
-- /___/   /\     Timestamp : 06/08/2022 16:41:22
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl "F:/semesterB2021/computer artitichture Lab/exp7/B6/Home_S251/ALU_Comprator.vhf" -w "F:/semesterB2021/computer artitichture Lab/exp7/B6/Home_S251/ALU_Comprator.sch"
--Design Name: ALU_Comprator
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity ALU_Comprator is
   port ( F        : in    std_logic_vector (2 downto 0); 
          NE_G     : in    std_logic; 
          S        : in    std_logic_vector (31 downto 0); 
          COMP_OUT : out   std_logic);
end ALU_Comprator;

architecture BEHAVIORAL of ALU_Comprator is
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


