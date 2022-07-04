--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Full_DLX_GPR.vhf
-- /___/   /\     Timestamp : 06/08/2022 16:41:14
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl "F:/semesterB2021/computer artitichture Lab/exp7/B6/Home_S251/Full_DLX_GPR.vhf" -w "F:/semesterB2021/computer artitichture Lab/exp7/B6/Home_S251/Full_DLX_GPR.sch"
--Design Name: Full_DLX_GPR
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

entity FULL_DLX_GPR_opt2_MUSER_Full_DLX_GPR is
   port ( CARD   : in    std_logic_vector (4 downto 0); 
          GPR_WE : in    std_logic; 
          JLINK  : in    std_logic; 
          WE     : out   std_logic);
end FULL_DLX_GPR_opt2_MUSER_Full_DLX_GPR;

architecture BEHAVIORAL of FULL_DLX_GPR_opt2_MUSER_Full_DLX_GPR is
   attribute BOX_TYPE   : string ;
   signal XLXN_1 : std_logic;
   signal XLXN_4 : std_logic;
   component OR5
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR5 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
begin
   XLXI_1 : OR5
      port map (I0=>CARD(4),
                I1=>CARD(3),
                I2=>CARD(2),
                I3=>CARD(1),
                I4=>CARD(0),
                O=>XLXN_1);
   
   XLXI_2 : OR2
      port map (I0=>XLXN_1,
                I1=>JLINK,
                O=>XLXN_4);
   
   XLXI_3 : AND2
      port map (I0=>XLXN_4,
                I1=>GPR_WE,
                O=>WE);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Full_DLX_GPR is
   port ( Aadr    : in    std_logic_vector (4 downto 0); 
          Badr    : in    std_logic_vector (4 downto 0); 
          C       : in    std_logic_vector (31 downto 0); 
          Cadr    : in    std_logic_vector (4 downto 0); 
          clk     : in    std_logic; 
          Dadr    : in    std_logic_vector (4 downto 0); 
          GPR_WE  : in    std_logic; 
          JLINK   : in    std_logic; 
          A       : out   std_logic_vector (31 downto 0); 
          AEQZero : out   std_logic; 
          B       : out   std_logic_vector (31 downto 0); 
          D       : out   std_logic_vector (31 downto 0));
end Full_DLX_GPR;

architecture BEHAVIORAL of Full_DLX_GPR is
   signal Aadr_Or_Cadr : std_logic_vector (4 downto 0);
   signal Badr_Or_Cadr : std_logic_vector (4 downto 0);
   signal Dadr_Or_Cadr : std_logic_vector (4 downto 0);
   signal WE           : std_logic;
   signal A_DUMMY      : std_logic_vector (31 downto 0);
   component FULL_DLX_GPR_opt2_MUSER_Full_DLX_GPR
      port ( JLINK  : in    std_logic; 
             GPR_WE : in    std_logic; 
             CARD   : in    std_logic_vector (4 downto 0); 
             WE     : out   std_logic);
   end component;
   
   component AEQZ
      port ( Din   : in    std_logic_vector (31 downto 0); 
             A_eqz : out   std_logic);
   end component;
   
   component MUX5BIT
      port ( sel : in    std_logic; 
             A0  : in    std_logic_vector (4 downto 0); 
             A1  : in    std_logic_vector (4 downto 0); 
             O   : out   std_logic_vector (4 downto 0));
   end component;
   
   component RAM32X32S
      port ( ADD : in    std_logic_vector (4 downto 0); 
             CLK : in    std_logic; 
             D   : in    std_logic_vector (31 downto 0); 
             DO  : out   std_logic_vector (31 downto 0); 
             WE  : in    std_logic);
   end component;
   
begin
   A(31 downto 0) <= A_DUMMY(31 downto 0);
   XLXI_1 : FULL_DLX_GPR_opt2_MUSER_Full_DLX_GPR
      port map (CARD(4 downto 0)=>Cadr(4 downto 0),
                GPR_WE=>GPR_WE,
                JLINK=>JLINK,
                WE=>WE);
   
   XLXI_2 : AEQZ
      port map (Din(31 downto 0)=>A_DUMMY(31 downto 0),
                A_eqz=>AEQZero);
   
   XLXI_3 : MUX5BIT
      port map (A0(4 downto 0)=>Aadr(4 downto 0),
                A1(4 downto 0)=>Cadr(4 downto 0),
                sel=>WE,
                O(4 downto 0)=>Aadr_Or_Cadr(4 downto 0));
   
   XLXI_4 : MUX5BIT
      port map (A0(4 downto 0)=>Badr(4 downto 0),
                A1(4 downto 0)=>Cadr(4 downto 0),
                sel=>WE,
                O(4 downto 0)=>Badr_Or_Cadr(4 downto 0));
   
   XLXI_5 : MUX5BIT
      port map (A0(4 downto 0)=>Dadr(4 downto 0),
                A1(4 downto 0)=>Cadr(4 downto 0),
                sel=>WE,
                O(4 downto 0)=>Dadr_Or_Cadr(4 downto 0));
   
   XLXI_87 : RAM32X32S
      port map (ADD(4 downto 0)=>Aadr_Or_Cadr(4 downto 0),
                CLK=>clk,
                D(31 downto 0)=>C(31 downto 0),
                WE=>WE,
                DO(31 downto 0)=>A_DUMMY(31 downto 0));
   
   XLXI_88 : RAM32X32S
      port map (ADD(4 downto 0)=>Badr_Or_Cadr(4 downto 0),
                CLK=>clk,
                D(31 downto 0)=>C(31 downto 0),
                WE=>WE,
                DO(31 downto 0)=>B(31 downto 0));
   
   XLXI_89 : RAM32X32S
      port map (ADD(4 downto 0)=>Dadr_Or_Cadr(4 downto 0),
                CLK=>clk,
                D(31 downto 0)=>C(31 downto 0),
                WE=>WE,
                DO(31 downto 0)=>D(31 downto 0));
   
end BEHAVIORAL;


