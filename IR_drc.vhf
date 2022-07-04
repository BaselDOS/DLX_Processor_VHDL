--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : IR_drc.vhf
-- /___/   /\     Timestamp : 05/10/2022 12:54:20
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: F:\ProgramData\Xilinx\14.7\ISE_DS\ISE\bin\nt64\unwrapped\sch2hdl.exe -intstyle ise -family spartan6 -flat -suppress -vhdl IR_drc.vhf -w "F:/semesterB2021/computer artitichture Lab/backUp/B6/25042022/B6/25042022/B6/Home_S251/IR.sch"
--Design Name: IR
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

entity IR is
   port ( CE        : in    std_logic; 
          clk       : in    std_logic; 
          DIN       : in    std_logic_vector (31 downto 0); 
          Immediate : out   std_logic_vector (15 downto 0); 
          OPCODE    : out   std_logic_vector (5 downto 0); 
          RD        : out   std_logic_vector (4 downto 0); 
          RS1       : out   std_logic_vector (4 downto 0));
end IR;

architecture BEHAVIORAL of IR is
   signal INST      : std_logic_vector (31 downto 0);
   component REG32CE
      port ( CLK  : in    std_logic; 
             CE   : in    std_logic; 
             DIN  : in    std_logic_vector (31 downto 0); 
             DOUT : out   std_logic_vector (31 downto 0));
   end component;
   
   component BUF6
      port ( Din  : in    std_logic_vector (5 downto 0); 
             Dout : out   std_logic_vector (5 downto 0));
   end component;
   
   component BUF5
      port ( Din  : in    std_logic_vector (4 downto 0); 
             Dout : out   std_logic_vector (4 downto 0));
   end component;
   
   component BUF16
      port ( Din  : in    std_logic_vector (15 downto 0); 
             Dout : out   std_logic_vector (15 downto 0));
   end component;
   
begin
   XLXI_1 : REG32CE
      port map (CE=>CE,
                CLK=>clk,
                DIN(31 downto 0)=>DIN(31 downto 0),
                DOUT(31 downto 0)=>INST(31 downto 0));
   
   XLXI_3 : BUF6
      port map (Din(5 downto 0)=>INST(31 downto 26),
                Dout(5 downto 0)=>OPCODE(5 downto 0));
   
   XLXI_4 : BUF5
      port map (Din(4 downto 0)=>INST(20 downto 16),
                Dout(4 downto 0)=>RD(4 downto 0));
   
   XLXI_39 : BUF16
      port map (Din(15 downto 0)=>INST(15 downto 0),
                Dout(15 downto 0)=>Immediate(15 downto 0));
   
   XLXI_40 : BUF5
      port map (Din(4 downto 0)=>INST(25 downto 21),
                Dout(4 downto 0)=>RS1(4 downto 0));
   
end BEHAVIORAL;


