--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Full_IR_Inv.vhf
-- /___/   /\     Timestamp : 06/08/2022 16:41:17
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl "F:/semesterB2021/computer artitichture Lab/exp7/B6/Home_S251/Full_IR_Inv.vhf" -w "F:/semesterB2021/computer artitichture Lab/exp7/B6/Home_S251/Full_IR_Inv.sch"
--Design Name: Full_IR_Inv
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

entity Full_IR_Inv is
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
end Full_IR_Inv;

architecture BEHAVIORAL of Full_IR_Inv is
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


