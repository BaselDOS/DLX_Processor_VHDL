----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:57:38 04/24/2022 
-- Design Name: 
-- Module Name:    READ_StateMachine - Behavioral 
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

entity READ_StateMachine is
    Port ( clk : in  STD_LOGIC;
           STEP_EN : in  STD_LOGIC;
           ACK_N : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           IN_INIT : out  STD_LOGIC;
           AS_N : out  STD_LOGIC;
           STOP_N : out  STD_LOGIC;
			  Start_Loading : out  STD_LOGIC;
           State : out  STD_LOGIC_VECTOR (1 downto 0));
end READ_StateMachine;

architecture Behavioral of READ_StateMachine is
	-- help variables
signal Current_State: std_logic_vector(1 downto 0):="00";

	--constants
constant Wait_State : std_logic_vector(1 downto 0) := "00";
constant Fetch_State : std_logic_vector(1 downto 0) := "01";
constant Wait4ACK_State : std_logic_vector(1 downto 0) := "10";
constant Load_State : std_logic_vector(1 downto 0) := "11";

begin
main :process(CLK,RESET)
begin
	if (RESET='1')then 
		Current_State <=Wait_State;								-- if RESET is trigered then go back to the first state.
	elsif((clk' event)and (clk='1')) then						-- seting the process to the rising edge of the clock.
		case Current_State is
			when Wait_State =>
				Start_Loading<='0';									-- don't start loading when the machine is not in Load_State0
				if(STEP_EN='1')
					then Current_State <= Fetch_State;			-- when STEP_EN is HIGH go to Fetch_State.
				else
					Current_State <=Wait_State;					--when STEP_EN is LOW continue waiting.
				end if;
			when Fetch_State =>
				Current_State <= Wait4ACK_State;					-- go to Wait4ack_State.
			when Wait4ACK_State =>
				if (ACK_N='0') then
					Current_State <=Load_State;					--when ACK_N is LOW meaning that the slave start to work then go to Load_State.
				else 
					Current_State <= Wait4ACK_State;				-- while the slave didn't response then still waiting for ACK.
				end if;
			when Load_State =>
				Start_Loading<='1';									-- start loading.
				Current_State <=Wait_State;						--go back to the first state.
			when others =>NULL;
		end case;
	end if;
END process main;
				
IN_INIT <= '1'	when (Current_State=Wait_state) else '0';
AS_N<='1' when ((not(Current_State=Fetch_state))and(not(Current_state=Wait4ACK_State))) else '0';
STOP_N<= '1' when ((ACK_N='0')or(not(Current_State=Wait4ACK_State))) else '0';
State<=Current_State;

end Behavioral;

