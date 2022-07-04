--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Slave.vhf
-- /___/   /\     Timestamp : 04/24/2022 11:19:24
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl "F:/semesterB2021/computer artitichture Lab/backUp/B6/Home_S25/Slave.vhf" -w "F:/semesterB2021/computer artitichture Lab/backUp/B6/Home_S25/Slave.sch"
--Design Name: Slave
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

entity Slave is
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
end Slave;

architecture BEHAVIORAL of Slave is
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


