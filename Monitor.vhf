--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Monitor.vhf
-- /___/   /\     Timestamp : 04/24/2022 11:19:26
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl "F:/semesterB2021/computer artitichture Lab/backUp/B6/Home_S25/Monitor.vhf" -w "F:/semesterB2021/computer artitichture Lab/backUp/B6/Home_S25/Monitor.sch"
--Design Name: Monitor
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

entity logical_analyzer_MUSER_Monitor is
   port ( Al                : in    std_logic_vector (4 downto 0); 
          CLK               : in    std_logic; 
          in_init           : in    std_logic; 
          Monitored_signals : in    std_logic_vector (31 downto 0); 
          step_en           : in    std_logic; 
          stop_n            : in    std_logic; 
          DOUT              : out   std_logic_vector (31 downto 0); 
          statis            : out   std_logic_vector (4 downto 0));
end logical_analyzer_MUSER_Monitor;

architecture BEHAVIORAL of logical_analyzer_MUSER_Monitor is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Slave_MUSER_Monitor is
   port ( Al       : in    std_logic_vector (9 downto 0); 
          CARD_SEL : in    std_logic; 
          CLK      : in    std_logic; 
          IN1      : in    std_logic_vector (31 downto 0); 
          IN2      : in    std_logic_vector (31 downto 0); 
          IN3      : in    std_logic_vector (31 downto 0); 
          IN4      : in    std_logic_vector (31 downto 0); 
          WR_IN_N  : in    std_logic; 
          reg_adr  : out   std_logic_vector (4 downto 0); 
          SACK_N   : out   std_logic; 
          SDO      : out   std_logic_vector (31 downto 0));
end Slave_MUSER_Monitor;

architecture BEHAVIORAL of Slave_MUSER_Monitor is
   attribute BOX_TYPE   : string ;
   signal XLXN_27  : std_logic;
   signal XLXN_28  : std_logic;
   signal XLXN_34  : std_logic;
   signal XLXN_51  : std_logic;
   signal X2       : std_logic;
   component FD
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of FD : component is "BLACK_BOX";
   
   component MUX4_32bit
      port ( A0  : in    std_logic_vector (31 downto 0); 
             A1  : in    std_logic_vector (31 downto 0); 
             A2  : in    std_logic_vector (31 downto 0); 
             A3  : in    std_logic_vector (31 downto 0); 
             sel : in    std_logic_vector (1 downto 0); 
             O   : out   std_logic_vector (31 downto 0));
   end component;
   
   component BUF5
      port ( Din  : in    std_logic_vector (4 downto 0); 
             Dout : out   std_logic_vector (4 downto 0));
   end component;
   
   component AND5
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND5 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component NAND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NAND2 : component is "BLACK_BOX";
   
begin
   XLXI_5 : FD
      port map (C=>CLK,
                D=>XLXN_27,
                Q=>XLXN_28);
   
   XLXI_6 : FD
      port map (C=>CLK,
                D=>XLXN_28,
                Q=>X2);
   
   XLXI_7 : FD
      port map (C=>CLK,
                D=>X2,
                Q=>XLXN_34);
   
   XLXI_8 : MUX4_32bit
      port map (A0(31 downto 0)=>IN1(31 downto 0),
                A1(31 downto 0)=>IN2(31 downto 0),
                A2(31 downto 0)=>IN3(31 downto 0),
                A3(31 downto 0)=>IN4(31 downto 0),
                sel(1 downto 0)=>Al(6 downto 5),
                O(31 downto 0)=>SDO(31 downto 0));
   
   XLXI_9 : BUF5
      port map (Din(4 downto 0)=>Al(4 downto 0),
                Dout(4 downto 0)=>reg_adr(4 downto 0));
   
   XLXI_11 : AND5
      port map (I0=>CARD_SEL,
                I1=>WR_IN_N,
                I2=>Al(9),
                I3=>Al(8),
                I4=>Al(7),
                O=>XLXN_27);
   
   XLXI_17 : INV
      port map (I=>XLXN_34,
                O=>XLXN_51);
   
   XLXI_18 : NAND2
      port map (I0=>X2,
                I1=>XLXN_51,
                O=>SACK_N);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Monitor is
   port ( AI                : in    std_logic_vector (9 downto 0); 
          CARD_SEL          : in    std_logic; 
          CLK               : in    std_logic; 
          input_signal_1    : in    std_logic_vector (31 downto 0); 
          input_signal_2    : in    std_logic_vector (31 downto 0); 
          in_init           : in    std_logic; 
          Monitored_signals : in    std_logic_vector (31 downto 0); 
          step_en           : in    std_logic; 
          stop_n            : in    std_logic; 
          WR_IN_N           : in    std_logic; 
          reg_adr           : out   std_logic_vector (4 downto 0); 
          SACK_N            : out   std_logic; 
          SDO               : out   std_logic_vector (31 downto 0));
end Monitor;

architecture BEHAVIORAL of Monitor is
   signal DOUT              : std_logic_vector (31 downto 0);
   signal status_ID         : std_logic_vector (31 downto 0);
   component Slave_MUSER_Monitor
      port ( CLK      : in    std_logic; 
             CARD_SEL : in    std_logic; 
             WR_IN_N  : in    std_logic; 
             Al       : in    std_logic_vector (9 downto 0); 
             IN1      : in    std_logic_vector (31 downto 0); 
             IN2      : in    std_logic_vector (31 downto 0); 
             IN4      : in    std_logic_vector (31 downto 0); 
             IN3      : in    std_logic_vector (31 downto 0); 
             SDO      : out   std_logic_vector (31 downto 0); 
             SACK_N   : out   std_logic; 
             reg_adr  : out   std_logic_vector (4 downto 0));
   end component;
   
   component logical_analyzer_MUSER_Monitor
      port ( CLK               : in    std_logic; 
             in_init           : in    std_logic; 
             step_en           : in    std_logic; 
             Monitored_signals : in    std_logic_vector (31 downto 0); 
             Al                : in    std_logic_vector (4 downto 0); 
             stop_n            : in    std_logic; 
             DOUT              : out   std_logic_vector (31 downto 0); 
             statis            : out   std_logic_vector (4 downto 0));
   end component;
   
   component ID
      port ( IDOUT : out   std_logic_vector (7 downto 0));
   end component;
   
begin
   XLXI_1 : Slave_MUSER_Monitor
      port map (Al(9 downto 0)=>AI(9 downto 0),
                CARD_SEL=>CARD_SEL,
                CLK=>CLK,
                IN1(31 downto 0)=>DOUT(31 downto 0),
                IN2(31 downto 0)=>input_signal_1(31 downto 0),
                IN3(31 downto 0)=>input_signal_2(31 downto 0),
                IN4(31 downto 0)=>status_ID(31 downto 0),
                WR_IN_N=>WR_IN_N,
                reg_adr(4 downto 0)=>reg_adr(4 downto 0),
                SACK_N=>SACK_N,
                SDO(31 downto 0)=>SDO(31 downto 0));
   
   XLXI_2 : logical_analyzer_MUSER_Monitor
      port map (Al(4 downto 0)=>AI(4 downto 0),
                CLK=>CLK,
                in_init=>in_init,
                Monitored_signals(31 downto 0)=>Monitored_signals(31 downto 0),
                step_en=>step_en,
                stop_n=>stop_n,
                DOUT(31 downto 0)=>DOUT(31 downto 0),
                statis(4 downto 0)=>status_ID(4 downto 0));
   
   XLXI_11 : ID
      port map (IDOUT(7 downto 0)=>status_ID(31 downto 24));
   
end BEHAVIORAL;


