----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:45:23 05/30/2022 
-- Design Name: 
-- Module Name:    SHIFTER - Behavioral 
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

entity SHIFTER is
    Port ( DIN : in  STD_LOGIC_VECTOR (31 downto 0);
           shift : in  STD_LOGIC;
           right : in  STD_LOGIC;
           DOUT : out  STD_LOGIC_VECTOR (31 downto 0));
end SHIFTER;
architecture Behavioral of SHIFTER is
begin
DOUT<='0'&DIN(31 downto 1)when((right='1')and(shift='1'))else DIN(30 downto 0)&'0' when((right='0')and (shift='1'))else DIN;
end Behavioral;

