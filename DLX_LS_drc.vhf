--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : DLX_LS_drc.vhf
-- /___/   /\     Timestamp : 05/10/2022 12:50:16
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: F:\ProgramData\Xilinx\14.7\ISE_DS\ISE\bin\nt64\unwrapped\sch2hdl.exe -intstyle ise -family spartan6 -flat -suppress -vhdl DLX_LS_drc.vhf -w "F:/semesterB2021/computer artitichture Lab/backUp/B6/25042022/B6/25042022/B6/Home_S251/DLX_LS.sch"
--Design Name: DLX_LS
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

entity DLX_LS is
   port ( ACK_N        : in    std_logic; 
          clk          : in    std_logic; 
          OPCODE       : in    std_logic_vector (5 downto 0); 
          reset        : in    std_logic; 
          STEP_EN      : in    std_logic; 
          AS_N         : out   std_logic; 
          BUSY         : out   std_logic; 
          B_EN         : out   std_logic; 
          C_EN         : out   std_logic; 
          GPR_WE       : out   std_logic; 
          IN_INIT      : out   std_logic; 
          IR_CE        : out   std_logic; 
          MR           : out   std_logic; 
          MW           : out   std_logic; 
          PC_STEP      : out   std_logic; 
          sel          : out   std_logic; 
          State_Of_DLX : out   std_logic_vector (2 downto 0); 
          State_Of_Mac : out   std_logic_vector (1 downto 0); 
          STOP_N       : out   std_logic; 
          WR_N         : out   std_logic);
end DLX_LS;

architecture BEHAVIORAL of DLX_LS is
   signal BUSY_DUMMY   : std_logic;
   signal MR_DUMMY     : std_logic;
   signal MW_DUMMY     : std_logic;
   component DLX_StateMachine
      port ( clk     : in    std_logic; 
             reset   : in    std_logic; 
             STEP_EN : in    std_logic; 
             BUSY    : in    std_logic; 
             ACK_N   : in    std_logic; 
             OPCODE  : in    std_logic_vector (5 downto 0); 
             MW      : out   std_logic; 
             MR      : out   std_logic; 
             PC_STEP : out   std_logic; 
             GPR_WE  : out   std_logic; 
             B_EN    : out   std_logic; 
             C_EN    : out   std_logic; 
             IN_INIT : out   std_logic; 
             sel     : out   std_logic; 
             IR_CE   : out   std_logic; 
             state   : out   std_logic_vector (2 downto 0));
   end component;
   
   component Mac
      port ( clk    : in    std_logic; 
             reset  : in    std_logic; 
             ACK_N  : in    std_logic; 
             MW     : in    std_logic; 
             MR     : in    std_logic; 
             STOP_N : out   std_logic; 
             BUSY   : out   std_logic; 
             AS_N   : out   std_logic; 
             WR_N   : out   std_logic; 
             state  : out   std_logic_vector (1 downto 0));
   end component;
   
begin
   BUSY <= BUSY_DUMMY;
   MR <= MR_DUMMY;
   MW <= MW_DUMMY;
   XLXI_1 : DLX_StateMachine
      port map (ACK_N=>ACK_N,
                BUSY=>BUSY_DUMMY,
                clk=>clk,
                OPCODE(5 downto 0)=>OPCODE(5 downto 0),
                reset=>reset,
                STEP_EN=>STEP_EN,
                B_EN=>B_EN,
                C_EN=>C_EN,
                GPR_WE=>GPR_WE,
                IN_INIT=>IN_INIT,
                IR_CE=>IR_CE,
                MR=>MR_DUMMY,
                MW=>MW_DUMMY,
                PC_STEP=>PC_STEP,
                sel=>sel,
                state(2 downto 0)=>State_Of_DLX(2 downto 0));
   
   XLXI_2 : Mac
      port map (ACK_N=>ACK_N,
                clk=>clk,
                MR=>MR_DUMMY,
                MW=>MW_DUMMY,
                reset=>reset,
                AS_N=>AS_N,
                BUSY=>BUSY_DUMMY,
                state(1 downto 0)=>State_Of_Mac(1 downto 0),
                STOP_N=>STOP_N,
                WR_N=>WR_N);
   
end BEHAVIORAL;


