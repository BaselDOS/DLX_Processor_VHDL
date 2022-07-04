-- Vhdl test bench created from schematic E:\adlx\B6\Home_S25\WRITEM.sch - Mon Apr 04 16:52:35 2022
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
ENTITY WRITEM_WRITEM_sch_tb IS
END WRITEM_WRITEM_sch_tb;
ARCHITECTURE behavioral OF WRITEM_WRITEM_sch_tb IS 

   COMPONENT WRITEM
   PORT( CLK	:	IN	STD_LOGIC; 
          STEP_EN	:	IN	STD_LOGIC; 
          ACK_N	:	IN	STD_LOGIC; 
          reset	:	IN	STD_LOGIC; 
          AS_N	:	OUT	STD_LOGIC; 
          IN_INIT	:	OUT	STD_LOGIC; 
          STOP_N	:	OUT	STD_LOGIC; 
          STATE	:	OUT	STD_LOGIC_VECTOR (1 DOWNTO 0); 
          AO	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          WDO	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          WR_N	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL CLK	:	STD_LOGIC;
   SIGNAL STEP_EN	:	STD_LOGIC;
   SIGNAL ACK_N	:	STD_LOGIC;
   SIGNAL reset	:	STD_LOGIC;
   SIGNAL AS_N	:	STD_LOGIC;
   SIGNAL IN_INIT	:	STD_LOGIC;
   SIGNAL STOP_N	:	STD_LOGIC;
   SIGNAL STATE	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
   SIGNAL AO	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL WDO	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL WR_N	:	STD_LOGIC;

BEGIN

   UUT: WRITEM PORT MAP(
		CLK => CLK, 
		STEP_EN => STEP_EN, 
		ACK_N => ACK_N, 
		reset => reset, 
		AS_N => AS_N, 
		IN_INIT => IN_INIT, 
		STOP_N => STOP_N, 
		STATE => STATE, 
		AO => AO, 
		WDO => WDO, 
		WR_N => WR_N
   );
	CLKP : process
	begin
		CLK <= '1';
		wait for 100 ns;
		CLK <= '0';
		wait for 100 ns;
	end process;
	

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
		reset <= '1';
		ACK_N <= '1';
		STEP_EN <= '0';
		wait for 204 ns;
		reset <= '0';
		wait for 200 ns;
		STEP_EN <= '1';
		wait for 200 ns;
		STEP_EN<='0';
		wait for 800 ns;
		ACK_N<='0';
		wait for 200 ns;
		ACK_N <='1';
		wait for 802 ns ;
		STEP_EN<='1';
		wait for 200 ns;
		STEP_EN<='0';
		wait for 800 ns;
		ACK_N<='0';
		wait for 200 ns;
		ACK_N<='1';
		wait for 802 ns;
		STEP_EN <= '1';
		wait for 200 ns;
		STEP_EN <= '0';
		wait for 800 ns;
		ACK_N <= '0';
		wait for 200 ns;
		ACK_N <= '1';
		wait for 800 ns;
		
		
		
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
