----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:35:22 05/09/2022 
-- Design Name: 
-- Module Name:    Mac - Behavioral 
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

entity Mac is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           ACK_N : in  STD_LOGIC;
           MW : in  STD_LOGIC;
           MR : in  STD_LOGIC;
           state : out  STD_LOGIC_VECTOR (1 downto 0);
           STOP_N : out  STD_LOGIC;
           BUSY : out  STD_LOGIC;
           AS_N : out  STD_LOGIC;
           WR_N : out  STD_LOGIC);
end Mac;
architecture Behavioral of Mac is
-- Help signals
signal Current_State: std_logic_vector(1 downto 0):="00";
signal Previous_State: std_logic_vector(1 downto 0):="00";
-- Constants
constant WAIT4REQ : std_logic_vector (1 downto 0) := "00";
constant WAIT4ACK : std_logic_vector (1 downto 0) := "01";
constant NEXTSTATE : std_logic_vector (1 downto 0) := "10";

begin
main : process(clk) 
begin
																								--when reset is triggered go back o the first state.
	if ((clk'event)and(clk ='1'))then
	if(reset ='0') then 																	-- coresponding to the high edje of the clock.
		case (Current_State) is
			when WAIT4REQ =>
				if((MW ='1')or(MR ='1'))then Current_State<=WAIT4ACK;			-- if the is a reqiest then go the the second state.
				else Current_State<=WAIT4REQ;											-- else stay waiting.
				end if;
			when WAIT4ACK =>
				if(ACK_N = '1') then Current_State <=WAIT4ACK;					-- when you recieve ACK_N signal then go to the last state.
				else Current_State <=NEXTSTATE;										-- else continue waiting.
				end if;
			when NEXTSTATE=>
				Current_State <=WAIT4REQ;												-- if you are st the last state the go to the first one.
			when others => NULL;
		end case;
		else Current_State <= WAIT4REQ;
	end if;
	Previous_State <= Current_State;
	end if;
end process main;
-- Controle Signals
AS_N <= '1' when (not(Current_State=WAIT4ACK)) else '0';						
STOP_N <= '0' when ((ACK_N='1')and(Current_State=WAIT4ACK)and (Previous_State=WAIT4ACK))else '1';
BUSY <='1' when ((ACK_N='1')and ((MR='1')or(MW='1'))) else '0';
WR_N <='1' when (MW='0')else '0';
state <=Current_State;
end Behavioral;

