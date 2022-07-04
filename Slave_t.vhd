-- Vhdl test bench created from schematic C:\ComputerLab\Home_S25\Slave.sch - Mon Mar 14 01:04:18 2022
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
ENTITY Slave_Slave_sch_tb IS
END Slave_Slave_sch_tb;
ARCHITECTURE behavioral OF Slave_Slave_sch_tb IS 

   COMPONENT Slave
   PORT( CLK	:	IN	STD_LOGIC; 
          CARD_SEL	:	IN	STD_LOGIC; 
          WR_IN_N	:	IN	STD_LOGIC; 
          SDO	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          Al	:	IN	STD_LOGIC_VECTOR (9 DOWNTO 0); 
          SACK_N	:	OUT	STD_LOGIC; 
          IN1	:	IN	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          IN2	:	IN	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          IN4	:	IN	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          IN3	:	IN	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          reg_adr	:	OUT	STD_LOGIC_VECTOR (4 DOWNTO 0));
   END COMPONENT;

   SIGNAL CLK	:	STD_LOGIC;
   SIGNAL CARD_SEL	:	STD_LOGIC;
   SIGNAL WR_IN_N	:	STD_LOGIC;
   SIGNAL SDO	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL Al	:	STD_LOGIC_VECTOR (9 DOWNTO 0);
   SIGNAL SACK_N	:	STD_LOGIC;
   SIGNAL IN1	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL IN2	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL IN4	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL IN3	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL reg_adr	:	STD_LOGIC_VECTOR (4 DOWNTO 0);

BEGIN

   UUT: Slave PORT MAP(
		CLK => CLK, 
		CARD_SEL => CARD_SEL, 
		WR_IN_N => WR_IN_N, 
		SDO => SDO, 
		Al => Al, 
		SACK_N => SACK_N, 
		IN1 => IN1, 
		IN2 => IN2, 
		IN4 => IN4, 
		IN3 => IN3, 
		reg_adr => reg_adr
   );
CLOCK : process
	begin
	CLK <= '1';
	wait for 100 ns;
	CLK <= '0';
	wait for 100 ns;
	end process;

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
		Al <= "1110100000";
		IN1 <= x"00000001";
		IN2 <= x"00000002";
		IN3 <= x"00000003";
		IN4 <= x"000000B6";
		CARD_SEL <= '1';
		WR_IN_N <= '0';

		wait for 1000 ns;
		WR_IN_N <= '1';
		wait for 100 ns;
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
