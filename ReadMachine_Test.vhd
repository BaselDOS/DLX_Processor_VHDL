-- Vhdl test bench created from schematic F:\semesterB2021\computer artitichture Lab\backUp\B6\Home_S25\READM.sch - Mon Apr 25 14:37:59 2022
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY READM_READM_sch_tb IS
END READM_READM_sch_tb;
ARCHITECTURE behavioral OF READM_READM_sch_tb IS 

   COMPONENT READM
   PORT( RESET	:	IN	STD_LOGIC; 
          DIN	:	IN	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          CLK	:	IN	STD_LOGIC; 
          RDO	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          AO	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          State	:	OUT	STD_LOGIC_VECTOR (1 DOWNTO 0); 
          ACK_N	:	IN	STD_LOGIC; 
          STEP_EN	:	IN	STD_LOGIC; 
          STOP_N	:	OUT	STD_LOGIC; 
          AS_N	:	OUT	STD_LOGIC; 
          IN_INIT	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL RESET	:	STD_LOGIC;
   SIGNAL DIN	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL CLK	:	STD_LOGIC;
   SIGNAL RDO	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL AO	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL State	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
   SIGNAL ACK_N	:	STD_LOGIC;
   SIGNAL STEP_EN	:	STD_LOGIC;
   SIGNAL STOP_N	:	STD_LOGIC;
   SIGNAL AS_N	:	STD_LOGIC;
   SIGNAL IN_INIT	:	STD_LOGIC;

BEGIN

   UUT: READM PORT MAP(
		RESET => RESET, 
		DIN => DIN, 
		CLK => CLK, 
		RDO => RDO, 
		AO => AO, 
		State => State, 
		ACK_N => ACK_N, 
		STEP_EN => STEP_EN, 
		STOP_N => STOP_N, 
		AS_N => AS_N, 
		IN_INIT => IN_INIT
   );


-- *** Test Bench - Clock behavior ***
	CLK_Process: process
	begin
		CLK<=  '1';
		wait for 100 ns;
		CLK <='0';
		wait for 100 ns;
	end process;

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
	DIN<=x"00000000";											-- first address.
	RESET<='1';													-- setting the state machine to the first state.
	ACK_N<='1';													-- setting the slave ACK to HIGH.
	STEP_EN <='0';												-- setting STEP_N to LOW.

	-- ** Starting the first simulation ** 
		wait for 200 ns;
		RESET <='0';												-- starting the state machine.
		wait for 200 ns;
		STEP_EN<='1';												-- go to the second state.
		wait for 200 ns;
		STEP_EN<='0';
		wait for 600 ns;											-- going to the next state and waiting 2 more cycles to the ACK;
		ACK_N<='0';													-- going to the 4'th state .
		wait for 200 ns;
		ACK_N<='1';
		wait for 600 ns;											-- going back to the first state and starting to load and wait two more cycles .
		STEP_EN <= '1';											-- going to the second state.
		wait for 200 ns;
		STEP_EN <= '0';
		wait for 200 ns;
		STEP_EN <= '1';											-- checking for un expected signal.
		wait for 200 ns;
		STEP_EN <= '0';
		wait for 200 ns;
		RESET<='1';													-- restarting the state machine.
		-- end of the first simulation.
		-- starting the second simulation.
		wait for 600 ns;
		RESET <='0';												-- starting the state machine.
		wait for 200 ns;
		STEP_EN<='1';												-- go to the second state.
		wait for 200 ns;
		STEP_EN<='0';
		wait for 200 ns;
		ACK_N<='1';													-- checking for un expected signal.
		wait for 200 ns;
		ACK_N<='0';
		wait for 200 ns;
		ACK_N<='1';													-- going back to the first state and starting to load and wait one more cycles .
		wait for 400 ns;
		STEP_EN<='1';												-- go to the second state.
		wait for 200 ns;
		STEP_EN<='0';
		wait for 600 ns;											-- going to the next state and waiting 2 more cycles to the ACK;
		ACK_N<='0';													-- going to the 4'th state .
		wait for 200 ns;
		ACK_N<='1';
		wait for 400 ns;
		STEP_EN<='1';												-- go to the second state.
		wait for 200 ns;
		STEP_EN<='0';
		wait for 600 ns;											-- going to the next state and waiting 2 more cycles to the ACK;
		ACK_N<='0';													-- going to the 4'th state .
		wait for 200 ns;
		ACK_N<='1';
		-- end of the second simulation.
		WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
