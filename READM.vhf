--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : READM.vhf
-- /___/   /\     Timestamp : 04/25/2022 16:09:38
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl "F:/semesterB2021/computer artitichture Lab/backUp/B6/Home_S25/READM.vhf" -w "F:/semesterB2021/computer artitichture Lab/backUp/B6/Home_S25/READM.sch"
--Design Name: READM
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

entity READM is
   port ( ACK_N   : in    std_logic; 
          CLK     : in    std_logic; 
          DIN     : in    std_logic_vector (31 downto 0); 
          RESET   : in    std_logic; 
          STEP_EN : in    std_logic; 
          AO      : out   std_logic_vector (31 downto 0); 
          AS_N    : out   std_logic; 
          IN_INIT : out   std_logic; 
          RDO     : out   std_logic_vector (31 downto 0); 
          State   : out   std_logic_vector (1 downto 0); 
          STOP_N  : out   std_logic);
end READM;

architecture BEHAVIORAL of READM is
   signal Start_Loading : std_logic;
   component CNT32
      port ( clk   : in    std_logic; 
             ce    : in    std_logic; 
             reset : in    std_logic; 
             cnt_o : out   std_logic_vector (31 downto 0));
   end component;
   
   component REG32CE
      port ( CLK  : in    std_logic; 
             CE   : in    std_logic; 
             DIN  : in    std_logic_vector (31 downto 0); 
             DOUT : out   std_logic_vector (31 downto 0));
   end component;
   
   component READ_StateMachine
      port ( clk           : in    std_logic; 
             STEP_EN       : in    std_logic; 
             ACK_N         : in    std_logic; 
             RESET         : in    std_logic; 
             IN_INIT       : out   std_logic; 
             AS_N          : out   std_logic; 
             STOP_N        : out   std_logic; 
             Start_Loading : out   std_logic; 
             State         : out   std_logic_vector (1 downto 0));
   end component;
   
begin
   XLXI_1 : CNT32
      port map (ce=>Start_Loading,
                clk=>CLK,
                reset=>RESET,
                cnt_o(31 downto 0)=>AO(31 downto 0));
   
   XLXI_2 : REG32CE
      port map (CE=>Start_Loading,
                CLK=>CLK,
                DIN(31 downto 0)=>DIN(31 downto 0),
                DOUT(31 downto 0)=>RDO(31 downto 0));
   
   XLXI_5 : READ_StateMachine
      port map (ACK_N=>ACK_N,
                clk=>CLK,
                RESET=>RESET,
                STEP_EN=>STEP_EN,
                AS_N=>AS_N,
                IN_INIT=>IN_INIT,
                Start_Loading=>Start_Loading,
                State(1 downto 0)=>State(1 downto 0),
                STOP_N=>STOP_N);
   
end BEHAVIORAL;


