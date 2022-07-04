----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:24:22 05/09/2022 
-- Design Name: 
-- Module Name:    DLX_StateMachine - Behavioral 
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

entity DLX_StateMachine is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           STEP_EN : in  STD_LOGIC;
           BUSY : in  STD_LOGIC;
           OPCODE : in  STD_LOGIC_VECTOR (5 downto 0);
           ACK_N : in  STD_LOGIC;
           MW : out  STD_LOGIC;
           MR : out  STD_LOGIC;
           PC_STEP : out  STD_LOGIC;
           GPR_WE : out  STD_LOGIC;
           B_EN : out  STD_LOGIC;
           C_EN : out  STD_LOGIC;
           IN_INIT : out  STD_LOGIC;
           sel : out  STD_LOGIC;
           state : out  STD_LOGIC_VECTOR (2 downto 0);
           IR_CE : out  STD_LOGIC);
end DLX_StateMachine;


architecture Behavioral of DLX_StateMachine is
-- Help Signals
signal Current_State : std_logic_vector (2 downto 0) := "000";
signal TAKE_PC : std_logic := '0';
-- Constants
constant INIT_S : std_logic_vector (2 downto 0) :="000";
constant FETCH_S : std_logic_vector (2 downto 0) :="001";
constant DECODE_S : std_logic_vector (2 downto 0) :="010";
constant HALT_S : std_logic_vector (2 downto 0) :="011";
constant LOAD_S : std_logic_vector (2 downto 0) :="100";
constant STORE_S : std_logic_vector (2 downto 0) :="101";
constant WRITE_BACK_S : std_logic_vector (2 downto 0) :="110";
constant LOAD_OPCODE : std_logic_vector (5 downto 0) :="100011";
constant STORE_OPCODE : std_logic_vector (5 downto 0) :="101011";

begin
main : process(clk)
begin
	if ((clk'event)and(clk='1')) then 
		case Current_State is
			when INIT_S =>
				if (STEP_EN='1') then Current_State <= FETCH_S;
				else Current_State <= INIT_S;
				end if;
			when FETCH_S =>
				if(BUSY='0') then Current_State <=DECODE_S;
				else Current_State <= FETCH_S;
				end if;
			when DECODE_S =>
				if (OPCODE=LOAD_OPCODE)then Current_State <= LOAD_S;
				elsif (OPCODE=STORE_OPCODE) then Current_State <= STORE_S;
				else Current_State <= HALT_S;
				end if;
			when LOAD_S =>
				if(BUSY='0') then Current_State <=WRITE_BACK_S;
				else Current_State <= LOAD_S;
				end if;
			when STORE_S =>
				if(BUSY='0') then Current_State <= INIT_S;
				else Current_State <= STORE_S;
				end if;
			when HALT_S =>
				if(reset='1') then
					Current_State <= INIT_S;
				else Current_State <= INIT_S;
				end if;
			when WRITE_BACK_S => 
				Current_State <= INIT_S;
			when others => NULL;
		end case;
	end if;
end process main;

IN_INIT <= '1' when ((not(Current_State=FETCH_s))or(not(Current_State=LOAD_S))or(not(Current_State=STORE_S)or(not(Current_State=DECODE_S))or(not(Current_State=WRITE_BACK_S)))) else '0';
PC_STEP <= '1' when(Current_State=DECODE_S) else '0';
TAKE_PC <= '1' when(Current_State=DECODE_S) else '0';
B_EN <= TAKE_PC;
C_EN <= '1' when ((ACK_N='0')and(Current_State =LOAD_S)) else '0';
sel <= '1' when ((Current_State =STORE_S)or (Current_State =LOAD_S)) else '0';
GPR_WE <= '1' when (Current_State=WRITE_BACK_S) else '0';
IR_CE <='1' when ((Current_State =FETCH_S)and(ACK_N ='0')) else '0';
MR <='1' when ((Current_State =FETCH_S)or (Current_State =LOAD_S)) else '0';
MW <='1' when ((Current_State =FETCH_S)or (Current_State =STORE_S)) else '0';
state <= Current_State;
end Behavioral;

