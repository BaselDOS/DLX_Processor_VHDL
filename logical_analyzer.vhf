--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : logical_analyzer.vhf
-- /___/   /\     Timestamp : 04/24/2022 11:19:25
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl "F:/semesterB2021/computer artitichture Lab/backUp/B6/Home_S25/logical_analyzer.vhf" -w "F:/semesterB2021/computer artitichture Lab/backUp/B6/Home_S25/logical_analyzer.sch"
--Design Name: logical_analyzer
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

entity logical_analyzer is
   port ( Al                : in    std_logic_vector (4 downto 0); 
          CLK               : in    std_logic; 
          in_init           : in    std_logic; 
          Monitored_signals : in    std_logic_vector (31 downto 0); 
          step_en           : in    std_logic; 
          stop_n            : in    std_logic; 
          DOUT              : out   std_logic_vector (31 downto 0); 
          statis            : out   std_logic_vector (4 downto 0));
end logical_analyzer;

architecture BEHAVIORAL of logical_analyzer is
   attribute BOX_TYPE   : string ;
   signal CNT_O             : std_logic_vector (4 downto 0);
   signal run               : std_logic;
   signal sts_we            : std_logic;
   signal we                : std_logic;
   signal XLXN_26           : std_logic;
   signal XLXN_27           : std_logic;
   signal XLXN_28           : std_logic;
   signal XLXN_29           : std_logic;
   signal XLXN_38           : std_logic;
   signal XLXN_41           : std_logic;
   signal XLXN_60           : std_logic;
   signal XLXN_61           : std_logic;
   signal XLXN_62           : std_logic;
   signal XLXN_66           : std_logic_vector (4 downto 0);
   component MUX5BIT
      port ( sel : in    std_logic; 
             A0  : in    std_logic_vector (4 downto 0); 
             A1  : in    std_logic_vector (4 downto 0); 
             O   : out   std_logic_vector (4 downto 0));
   end component;
   
   component RAM32X32S
      port ( CLK : in    std_logic; 
             WE  : in    std_logic; 
             D   : in    std_logic_vector (31 downto 0); 
             ADD : in    std_logic_vector (4 downto 0); 
             DO  : out   std_logic_vector (31 downto 0));
   end component;
   
   component CNT5
      port ( clk   : in    std_logic; 
             ce    : in    std_logic; 
             reset : in    std_logic; 
             cnt_o : out   std_logic_vector (4 downto 0));
   end component;
   
   component Reg5
      port ( CLK : in    std_logic; 
             CE  : in    std_logic; 
             D   : in    std_logic_vector (4 downto 0); 
             Q   : out   std_logic_vector (4 downto 0));
   end component;
   
   component FD
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of FD : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component NAND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NAND2 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
begin
   XLXI_1 : MUX5BIT
      port map (A0(4 downto 0)=>Al(4 downto 0),
                A1(4 downto 0)=>CNT_O(4 downto 0),
                sel=>we,
                O(4 downto 0)=>XLXN_66(4 downto 0));
   
   XLXI_2 : RAM32X32S
      port map (ADD(4 downto 0)=>XLXN_66(4 downto 0),
                CLK=>CLK,
                D(31 downto 0)=>Monitored_signals(31 downto 0),
                WE=>we,
                DO(31 downto 0)=>DOUT(31 downto 0));
   
   XLXI_3 : CNT5
      port map (ce=>we,
                clk=>CLK,
                reset=>XLXN_62,
                cnt_o(4 downto 0)=>CNT_O(4 downto 0));
   
   XLXI_5 : Reg5
      port map (CE=>sts_we,
                CLK=>CLK,
                D(4 downto 0)=>CNT_O(4 downto 0),
                Q(4 downto 0)=>statis(4 downto 0));
   
   XLXI_6 : FD
      port map (C=>CLK,
                D=>XLXN_26,
                Q=>XLXN_27);
   
   XLXI_7 : FD
      port map (C=>CLK,
                D=>XLXN_60,
                Q=>XLXN_61);
   
   XLXI_8 : FD
      port map (C=>CLK,
                D=>run,
                Q=>XLXN_41);
   
   XLXI_16 : AND2
      port map (I0=>XLXN_38,
                I1=>XLXN_41,
                O=>sts_we);
   
   XLXI_17 : AND2
      port map (I0=>run,
                I1=>stop_n,
                O=>we);
   
   XLXI_18 : NAND2
      port map (I0=>in_init,
                I1=>XLXN_28,
                O=>XLXN_29);
   
   XLXI_19 : OR2
      port map (I0=>step_en,
                I1=>XLXN_29,
                O=>run);
   
   XLXI_20 : INV
      port map (I=>in_init,
                O=>XLXN_26);
   
   XLXI_21 : INV
      port map (I=>XLXN_27,
                O=>XLXN_28);
   
   XLXI_22 : INV
      port map (I=>run,
                O=>XLXN_38);
   
   XLXI_23 : INV
      port map (I=>XLXN_61,
                O=>XLXN_62);
   
   XLXI_51 : INV
      port map (I=>sts_we,
                O=>XLXN_60);
   
end BEHAVIORAL;


