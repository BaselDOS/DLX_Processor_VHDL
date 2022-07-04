----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:59:51 05/30/2022 
-- Design Name: 
-- Module Name:    Mux_IR - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Mux_IR is
    Port ( A : in  STD_LOGIC_VECTOR (4 downto 0);
           B : in  STD_LOGIC_VECTOR (4 downto 0);
           C : in  STD_LOGIC;
           J : in  STD_LOGIC;
           I : in  STD_LOGIC;
           Mux_Out : out  STD_LOGIC_VECTOR (4 downto 0);
           CO : out  STD_LOGIC_VECTOR (15 downto 0));
end Mux_IR;
architecture Behavioral of Mux_IR is
begin
Mux_Out <= B when ((I='1')and(J='0'))else A when((I='0')and(J='0')) else "11111";
CO <=(x"FFFF")when (C='1') else (X"0000");
end Behavioral;

