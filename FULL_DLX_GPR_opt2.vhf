--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : FULL_DLX_GPR_opt2.vhf
-- /___/   /\     Timestamp : 06/08/2022 16:41:19
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl "F:/semesterB2021/computer artitichture Lab/exp7/B6/Home_S251/FULL_DLX_GPR_opt2.vhf" -w "F:/semesterB2021/computer artitichture Lab/exp7/B6/Home_S251/FULL_DLX_GPR_opt2.sch"
--Design Name: FULL_DLX_GPR_opt2
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

entity FULL_DLX_GPR_opt2 is
   port ( CARD   : in    std_logic_vector (4 downto 0); 
          GPR_WE : in    std_logic; 
          JLINK  : in    std_logic; 
          WE     : out   std_logic);
end FULL_DLX_GPR_opt2;

architecture BEHAVIORAL of FULL_DLX_GPR_opt2 is
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


