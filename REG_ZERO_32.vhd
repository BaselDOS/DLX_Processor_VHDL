----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:31:33 05/30/2022 
-- Design Name: 
-- Module Name:    REG_ZERO_32 - Behavioral 
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

entity REG_ZERO_32 is
    Port ( REG_ZERO_Out : out  STD_LOGIC_VECTOR (31 downto 0));
end REG_ZERO_32;
architecture Behavioral of REG_ZERO_32 is
begin
REG_ZERO_Out<=x"00000000";
end Behavioral;

