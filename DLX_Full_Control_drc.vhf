--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : DLX_Full_Control_drc.vhf
-- /___/   /\     Timestamp : 06/08/2022 21:48:30
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: F:\ProgramData\Xilinx\14.7\ISE_DS\ISE\bin\nt64\unwrapped\sch2hdl.exe -intstyle ise -family spartan6 -flat -suppress -vhdl DLX_Full_Control_drc.vhf -w "F:/semesterB2021/computer artitichture Lab/exp7/B6/Home_S251/DLX_Full_Control.sch"
--Design Name: DLX_Full_Control
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

entity DLX_Full_Control is
   port ( ACK_N     : in    std_logic; 
          AEQZ      : in    std_logic; 
          clk       : in    std_logic; 
          imm       : in    std_logic_vector (15 downto 0); 
          OPCODE    : in    std_logic_vector (5 downto 0); 
          reset     : in    std_logic; 
          STEP_EN   : in    std_logic; 
          ADD       : out   std_logic; 
          AS_N      : out   std_logic; 
          A_EN      : out   std_logic; 
          A_sel     : out   std_logic; 
          BUSY      : out   std_logic; 
          B_EN      : out   std_logic; 
          C_EN      : out   std_logic; 
          DINT_sel  : out   std_logic; 
          DLX_State : out   std_logic_vector (4 downto 0); 
          GPR_WE    : out   std_logic; 
          IN_INIT   : out   std_logic; 
          IR_CE     : out   std_logic; 
          ITYPE     : out   std_logic; 
          JLINK     : out   std_logic; 
          Mac_State : out   std_logic_vector (1 downto 0); 
          MAR_EN    : out   std_logic; 
          MDR_EN    : out   std_logic; 
          MDR_sel   : out   std_logic; 
          MR        : out   std_logic; 
          MW        : out   std_logic; 
          PC_STEP   : out   std_logic; 
          SHIFT     : out   std_logic; 
          stop_n    : out   std_logic; 
          S1_sel    : out   std_logic_vector (1 downto 0); 
          S2_sel    : out   std_logic_vector (1 downto 0); 
          TEST      : out   std_logic; 
          WR_N      : out   std_logic);
end DLX_Full_Control;

architecture BEHAVIORAL of DLX_Full_Control is
   signal BUSY_DUMMY : std_logic;
   signal MR_DUMMY   : std_logic;
   signal MW_DUMMY   : std_logic;
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
   
   component DLX_Full_StateMachine
      port ( mr        : out   std_logic; 
             mw        : out   std_logic; 
             in_init   : out   std_logic; 
             gpr_we    : out   std_logic; 
             IR_ce     : out   std_logic; 
             test      : out   std_logic; 
             add       : out   std_logic; 
             jlink     : out   std_logic; 
             itype     : out   std_logic; 
             A_ce      : out   std_logic; 
             B_ce      : out   std_logic; 
             C_ce      : out   std_logic; 
             MDR_ce    : out   std_logic; 
             MAR_ce    : out   std_logic; 
             PC_ce     : out   std_logic; 
             Asel      : out   std_logic; 
             DINTset   : out   std_logic; 
             MDRsel    : out   std_logic; 
             shift_en  : out   std_logic; 
             S1sel     : out   std_logic_vector (1 downto 0); 
             S2sel     : out   std_logic_vector (1 downto 0); 
             state_out : out   std_logic_vector (4 downto 0); 
             step_en   : in    std_logic; 
             busy      : in    std_logic; 
             AEQZ      : in    std_logic; 
             opcode    : in    std_logic_vector (5 downto 0); 
             clk       : in    std_logic; 
             reset     : in    std_logic; 
             imm       : in    std_logic_vector (15 downto 0));
   end component;
   
begin
   BUSY <= BUSY_DUMMY;
   MR <= MR_DUMMY;
   MW <= MW_DUMMY;
   XLXI_1 : Mac
      port map (ACK_N=>ACK_N,
                clk=>clk,
                MR=>MR_DUMMY,
                MW=>MW_DUMMY,
                reset=>reset,
                AS_N=>AS_N,
                BUSY=>BUSY_DUMMY,
                state(1 downto 0)=>Mac_State(1 downto 0),
                STOP_N=>stop_n,
                WR_N=>WR_N);
   
   XLXI_2 : DLX_Full_StateMachine
      port map (AEQZ=>AEQZ,
                busy=>BUSY_DUMMY,
                clk=>clk,
                imm(15 downto 0)=>imm(15 downto 0),
                opcode(5 downto 0)=>OPCODE(5 downto 0),
                reset=>reset,
                step_en=>STEP_EN,
                add=>ADD,
                Asel=>A_sel,
                A_ce=>A_EN,
                B_ce=>B_EN,
                C_ce=>C_EN,
                DINTset=>DINT_sel,
                gpr_we=>GPR_WE,
                in_init=>IN_INIT,
                IR_ce=>IR_CE,
                itype=>ITYPE,
                jlink=>JLINK,
                MAR_ce=>MAR_EN,
                MDRsel=>MDR_sel,
                MDR_ce=>MDR_EN,
                mr=>MR_DUMMY,
                mw=>MW_DUMMY,
                PC_ce=>PC_STEP,
                shift_en=>SHIFT,
                state_out(4 downto 0)=>DLX_State(4 downto 0),
                S1sel(1 downto 0)=>S1_sel(1 downto 0),
                S2sel(1 downto 0)=>S2_sel(1 downto 0),
                test=>TEST);
   
end BEHAVIORAL;


