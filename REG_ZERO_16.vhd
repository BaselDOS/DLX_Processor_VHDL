----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:40:35 05/30/2022 
-- Design Name: 
-- Module Name:    REG_ZERO_16 - Behavioral 
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

entity REG_ZERO_16 is
    Port ( REG_Out : out  STD_LOGIC_VECTOR (15 downto 0));
end REG_ZERO_16;
architecture Behavioral of REG_ZERO_16 is
begin
REG_Out<=x"0000";

end Behavioral;

