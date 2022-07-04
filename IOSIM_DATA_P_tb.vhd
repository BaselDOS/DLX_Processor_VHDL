-- Vhdl test bench created from schematic F:\semesterB2021\computer artitichture Lab\exp7\B6\Home_S251\IOSIM_DATA_P.sch - Wed Jun 08 21:55:13 2022
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
ENTITY IOSIM_DATA_P_IOSIM_DATA_P_sch_tb IS
END IOSIM_DATA_P_IOSIM_DATA_P_sch_tb;
ARCHITECTURE behavioral OF IOSIM_DATA_P_IOSIM_DATA_P_sch_tb IS 

   COMPONENT IOSIM_DATA_P
   PORT( reset	:	IN	STD_LOGIC; 
          clk	:	IN	STD_LOGIC; 
          pc_step_en	:	IN	STD_LOGIC);
   END COMPONENT;

   SIGNAL reset	:	STD_LOGIC;
   SIGNAL clk	:	STD_LOGIC;
   SIGNAL pc_step_en	:	STD_LOGIC;

BEGIN

   UUT: IOSIM_DATA_P PORT MAP(
		reset => reset, 
		clk => clk, 
		pc_step_en => pc_step_en
   );

-- *** Test Bench - User Defined Section ***
clk_process : PROCESS
  BEGIN
       clk <= '1';
		 wait for 100 ns;
		 clk<= '0';
		 wait for 100 ns;
  end PROCESS;
  
tb : PROCESS
   BEGIN
	  pc_step_en <= '0';
	  reset <= '1';
	  wait for 202 ns;
	  reset <= '0';
	  for i in 0 to 36 loop
	    pc_step_en <= '1';
		 wait for 200 ns;
		 pc_step_en <= '0';
		 wait for 3000 ns;
		 end loop;
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
