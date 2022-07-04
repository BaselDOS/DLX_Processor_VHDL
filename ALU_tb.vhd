-- Vhdl test bench created from schematic F:\semesterB2021\computer artitichture Lab\exp7\B6\Home_S251\ALU.sch - Thu Jun 09 14:53:32 2022
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
ENTITY ALU_ALU_sch_tb IS
END ALU_ALU_sch_tb;
ARCHITECTURE behavioral OF ALU_ALU_sch_tb IS 

   COMPONENT ALU
   PORT( A	:	IN	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          B	:	IN	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          TEST	:	IN	STD_LOGIC; 
          ALU_F	:	IN	STD_LOGIC_VECTOR (2 DOWNTO 0); 
          ADD	:	IN	STD_LOGIC; 
          ALU_Out	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          NE_G	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL A	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL B	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL TEST	:	STD_LOGIC;
   SIGNAL ALU_F	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
   SIGNAL ADD	:	STD_LOGIC;
   SIGNAL ALU_Out	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL NE_G	:	STD_LOGIC;

BEGIN

   UUT: ALU PORT MAP(
		A => A, 
		B => B, 
		TEST => TEST, 
		ALU_F => ALU_F, 
		ADD => ADD, 
		ALU_Out => ALU_Out, 
		NE_G => NE_G
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
  BEGIN
		A<=x"00000000";
		B<=x"00000000";
		TEST<='0';
		ALU_F<="010";
		ADD<='0';
		wait for 200 ns;
		ADD<='1';
		wait for 200 ns;
		B<=x"00000001";
		wait for 200 ns;
		A<=x"00000001";
		wait for 200 ns;
		A<=x"00000002";
		wait for 200 ns;
		A<=x"00000003";
		wait for 200 ns;
		A<=x"00000004";
		wait for 200 ns;
		A<=x"00000005";
   WAIT; -- will wait forever
  END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
