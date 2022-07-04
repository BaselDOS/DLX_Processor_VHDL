--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : REG_A_B_C.vhf
-- /___/   /\     Timestamp : 06/08/2022 16:41:21
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl "F:/semesterB2021/computer artitichture Lab/exp7/B6/Home_S251/REG_A_B_C.vhf" -w "F:/semesterB2021/computer artitichture Lab/exp7/B6/Home_S251/REG_A_B_C.sch"
--Design Name: REG_A_B_C
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

entity REG_A_B_C is
   port ( ce          : in    std_logic; 
          clk         : in    std_logic; 
          REG_ABC_In  : in    std_logic_vector (31 downto 0); 
          REG_ABC_Out : out   std_logic_vector (31 downto 0));
end REG_A_B_C;

architecture BEHAVIORAL of REG_A_B_C is
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


