----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:16:18 05/09/2022 
-- Design Name: 
-- Module Name:    Zero_Register16Bit - Behavioral 
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

entity Zero_Register16Bit is
    Port ( Zero_Out : out  STD_LOGIC_VECTOR (15 downto 0));
end Zero_Register16Bit;
architecture Behavioral of Zero_Register16Bit is
begin
	Zero_Out <=x"0000";
end Behavioral;

