--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : GPR_WE_opt2_drc.vhf
-- /___/   /\     Timestamp : 05/10/2022 11:04:15
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: F:\ProgramData\Xilinx\14.7\ISE_DS\ISE\bin\nt64\unwrapped\sch2hdl.exe -intstyle ise -family spartan6 -flat -suppress -vhdl GPR_WE_opt2_drc.vhf -w "F:/semesterB2021/computer artitichture Lab/backUp/B6/25042022/B6/25042022/B6/Home_S251/GPR_WE_opt2.sch"
--Design Name: GPR_WE_opt2
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

entity GPR_WE_opt2 is
   port ( Cadr   : in    std_logic_vector (4 downto 0); 
          GPR_WE : in    std_logic; 
          WE     : out   std_logic);
end GPR_WE_opt2;

architecture BEHAVIORAL of GPR_WE_opt2 is
   attribute BOX_TYPE   : string ;
   signal XLXN_6 : std_logic;
   component OR5
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR5 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
begin
   XLXI_1 : OR5
      port map (I0=>Cadr(4),
                I1=>Cadr(3),
                I2=>Cadr(2),
                I3=>Cadr(1),
                I4=>Cadr(0),
                O=>XLXN_6);
   
   XLXI_2 : AND2
      port map (I0=>XLXN_6,
                I1=>GPR_WE,
                O=>WE);
   
end BEHAVIORAL;


