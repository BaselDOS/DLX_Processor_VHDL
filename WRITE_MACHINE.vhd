----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:58:06 04/04/2022 
-- Design Name: 
-- Module Name:    WRITE_MACHINE - Behavioral 
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

entity WRITE_MACHINE is
port(
	CLK : in STD_LOGIC;
	STEP_EN : in STD_LOGIC;
	ACK_N : in STD_LOGIC;
	reset : in STD_LOGIC;
	STATE : out STD_LOGIC_VECTOR (1 downto 0);
	IN_INIT : out STD_LOGIC;
	AS_N : out STD_LOGIC;
	WR_CE : out STD_LOGIC;
	STOP_N : out STD_LOGIC
);
end WRITE_MACHINE;



architecture Behavioral of WRITE_MACHINE is


signal currentstate : STD_LOGIC_VECTOR (1 downto 0) := "00";

constant wait_s : STD_LOGIC_VECTOR (1 downto 0) := "00";
constant store : STD_LOGIC_VECTOR (1 downto 0) := "01";
constant wait4ack : STD_LOGIC_VECTOR (1 downto 0) := "10";
constant terminate : STD_LOGIC_VECTOR (1 downto 0) := "11";

begin

state_proc : process(STEP_EN, CLK)
begin
	if (CLK'event and CLK = '1') then
		if (reset = '0') then 
		case currentstate is
			when wait_s =>
				WR_CE <= '0';
				if (STEP_EN = '1') then currentstate <= store;
				else currentstate <= wait_s;
				end if;
			
			when store =>
				currentstate <= wait4ack;
		
			when wait4ack =>
				if (ACK_N = '0') then currentstate <= terminate;
				else currentstate <= wait4ack;
				end if;
		
			when terminate =>
				WR_CE <= '1';
				currentstate <= wait_s;
			when others => NULL;
		end case; 
		else currentstate <= wait_s;
		end if;
	end if;
end process state_proc;


state <= currentstate;
STOP_N  <= '1' when((not(currentstate = wait4ack)) or (ACK_N = '0')) else '0';
AS_N <= '1' when((not(currentstate = wait4ack)) and not(currentstate = store)) else '0';
IN_INIT <= '1' when(currentstate = wait_s) else '0';

end Behavioral;

