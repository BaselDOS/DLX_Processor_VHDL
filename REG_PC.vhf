--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : REG_PC.vhf
-- /___/   /\     Timestamp : 06/08/2022 16:41:21
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl "F:/semesterB2021/computer artitichture Lab/exp7/B6/Home_S251/REG_PC.vhf" -w "F:/semesterB2021/computer artitichture Lab/exp7/B6/Home_S251/REG_PC.sch"
--Design Name: REG_PC
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

entity REG_PC is
   port ( ce     : in    std_logic; 
          clk    : in    std_logic; 
          PC_IN  : in    std_logic_vector (31 downto 0); 
          reset  : in    std_logic; 
          PC_Out : out   std_logic_vector (31 downto 0));
end REG_PC;

architecture BEHAVIORAL of REG_PC is
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


