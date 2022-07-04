--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : WRITEM.vhf
-- /___/   /\     Timestamp : 05/09/2022 10:13:41
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl "F:/semesterB2021/computer artitichture Lab/backUp/B6/25042022/B6/25042022/B6/Home_S251/WRITEM.vhf" -w "F:/semesterB2021/computer artitichture Lab/backUp/B6/25042022/B6/25042022/B6/Home_S251/WRITEM.sch"
--Design Name: WRITEM
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

entity WRITEM is
   port ( ACK_N   : in    std_logic; 
          CLK     : in    std_logic; 
          reset   : in    std_logic; 
          STEP_EN : in    std_logic; 
          AO      : out   std_logic_vector (31 downto 0); 
          AS_N    : out   std_logic; 
          IN_INIT : out   std_logic; 
          STATE   : out   std_logic_vector (1 downto 0); 
          STOP_N  : out   std_logic; 
          WDO     : out   std_logic_vector (31 downto 0); 
          WR_N    : out   std_logic);
end WRITEM;

architecture BEHAVIORAL of WRITEM is
   attribute BOX_TYPE   : string ;
   signal CE         : std_logic;
   signal AS_N_DUMMY : std_logic;
   component WRITE_MACHINE
      port ( CLK     : in    std_logic; 
             STEP_EN : in    std_logic; 
             ACK_N   : in    std_logic; 
             reset   : in    std_logic; 
             IN_INIT : out   std_logic; 
             AS_N    : out   std_logic; 
             WR_CE   : out   std_logic; 
             STOP_N  : out   std_logic; 
             STATE   : out   std_logic_vector (1 downto 0));
   end component;
   
   component CNT32
      port ( clk   : in    std_logic; 
             ce    : in    std_logic; 
             reset : in    std_logic; 
             cnt_o : out   std_logic_vector (31 downto 0));
   end component;
   
   component ID
      port ( IDOUT : out   std_logic_vector (7 downto 0));
   end component;
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
begin
   AS_N <= AS_N_DUMMY;
   XLXI_1 : WRITE_MACHINE
      port map (ACK_N=>ACK_N,
                CLK=>CLK,
                reset=>reset,
                STEP_EN=>STEP_EN,
                AS_N=>AS_N_DUMMY,
                IN_INIT=>IN_INIT,
                STATE(1 downto 0)=>STATE(1 downto 0),
                STOP_N=>STOP_N,
                WR_CE=>CE);
   
   XLXI_2 : CNT32
      port map (ce=>CE,
                clk=>CLK,
                reset=>reset,
                cnt_o(31 downto 0)=>AO(31 downto 0));
   
   XLXI_3 : ID
      port map (IDOUT(7 downto 0)=>WDO(7 downto 0));
   
   XLXI_5 : BUF
      port map (I=>AS_N_DUMMY,
                O=>WR_N);
   
end BEHAVIORAL;


