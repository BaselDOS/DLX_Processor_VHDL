-- Vhdl test bench created from schematic E:\adlx\B6\Home_S25\Monitor.sch - Mon Mar 21 16:26:15 2022
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
ENTITY Monitor_Monitor_sch_tb IS
END Monitor_Monitor_sch_tb;
ARCHITECTURE behavioral OF Monitor_Monitor_sch_tb IS 

   COMPONENT Monitor
   PORT( SDO	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          reg_adr	:	OUT	STD_LOGIC_VECTOR (4 DOWNTO 0); 
          SACK_N	:	OUT	STD_LOGIC; 
          WR_IN_N	:	IN	STD_LOGIC; 
          stop_n	:	IN	STD_LOGIC; 
          step_en	:	IN	STD_LOGIC; 
          CLK	:	IN	STD_LOGIC; 
          Monitored_signals	:	IN	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          AI	:	IN	STD_LOGIC_VECTOR (9 DOWNTO 0); 
          CARD_SEL	:	IN	STD_LOGIC; 
          input_signal_2	:	IN	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          input_signal_1	:	IN	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          in_init	:	IN	STD_LOGIC);
   END COMPONENT;

   SIGNAL SDO	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL reg_adr	:	STD_LOGIC_VECTOR (4 DOWNTO 0);
   SIGNAL SACK_N	:	STD_LOGIC;
   SIGNAL WR_IN_N	:	STD_LOGIC;
   SIGNAL stop_n	:	STD_LOGIC;
   SIGNAL step_en	:	STD_LOGIC;
   SIGNAL CLK	:	STD_LOGIC;
   SIGNAL Monitored_signals	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL AI	:	STD_LOGIC_VECTOR (9 DOWNTO 0);
   SIGNAL CARD_SEL	:	STD_LOGIC;
   SIGNAL input_signal_2	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL input_signal_1	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL in_init	:	STD_LOGIC;

BEGIN

   UUT: Monitor PORT MAP(
		SDO => SDO, 
		reg_adr => reg_adr, 
		SACK_N => SACK_N, 
		WR_IN_N => WR_IN_N, 
		stop_n => stop_n, 
		step_en => step_en, 
		CLK => CLK, 
		Monitored_signals => Monitored_signals, 
		AI => AI, 
		CARD_SEL => CARD_SEL, 
		input_signal_2 => input_signal_2, 
		input_signal_1 => input_signal_1, 
		in_init => in_init
   );

-- *** Test Bench - User Defined Section ***
	CLK_P : PROCESS
	begin
		CLK <= '1';
		wait for 100 ns;
		CLK <= '0';
		wait for 100 ns;
	end process CLK_P;
   tb : PROCESS
   BEGIN
	CARD_SEL <= '0';
	AI <= "0000000000";
	IN_INIT <= '1';
	WR_IN_N <= '1';
	stop_n <= '1';
	step_en <= '0';
	Monitored_signals <= "00010000000000000000000000000001";
	input_signal_1 <= x"00000000";
	input_signal_2 <= x"00000001";
	
	-- *** Starting to write ***
	wait for 1 ns;
	wait for 200 ns;
	step_en <= '1';
	wait for 200 ns;
	step_en <= '0';
	in_init <= '0';
	Monitored_signals <= "00010000000000000000000000000010";
	wait for 200 ns;
	Monitored_signals <= "00010000000000000000000000000011";
	wait for 200 ns;
	Monitored_signals <= "00010000000000000000000000000100";
	wait for 200 ns;
	Monitored_signals <= "00010000000000000000000000000000";
	stop_n <= '0';
	wait for 400 ns;
	stop_n <= '1';
	wait for 400 ns;
	--- *** Starting to Read ***
	in_init <= '1';
	wait for 800 ns;
	AI <= "1110000000";
	CARD_SEL <= '1';
	wait for 200 ns;
	CARD_SEL <= '0';
	wait for 200 ns;
	AI <= "1110000001";
	CARD_SEL <= '1';
	wait for 200 ns;
	CARD_SEL <= '0';
	wait for 200 ns;
	AI <= "1110000010";
	CARD_SEL <= '1';
	wait for 200 ns;
	CARD_SEL <= '0';
	wait for 200 ns;
	AI <= "1110000011";
	CARD_SEL <= '1';
	wait for 200 ns;
	CARD_SEL <= '0';
	wait for 200 ns;
	AI <= "1110000100";
	CARD_SEL <= '1';
	wait for 200 ns;
	CARD_SEL <= '0';
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
