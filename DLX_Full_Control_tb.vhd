-- Vhdl test bench created from schematic F:\semesterB2021\computer artitichture Lab\exp7\B6\Home_S251\DLX_Full_Control.sch - Wed Jun 08 16:38:26 2022
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
ENTITY DLX_Full_Control_DLX_Full_Control_sch_tb IS
END DLX_Full_Control_DLX_Full_Control_sch_tb;
ARCHITECTURE behavioral OF DLX_Full_Control_DLX_Full_Control_sch_tb IS 

   COMPONENT DLX_Full_Control
   PORT( clk	:	IN	STD_LOGIC; 
          reset	:	IN	STD_LOGIC; 
          ACK_N	:	IN	STD_LOGIC; 
          STEP_EN	:	IN	STD_LOGIC; 
          AEQZ	:	IN	STD_LOGIC; 
          OPCODE	:	IN	STD_LOGIC_VECTOR (5 DOWNTO 0); 
          BUSY	:	OUT	STD_LOGIC; 
          AS_N	:	OUT	STD_LOGIC; 
          WR_N	:	OUT	STD_LOGIC; 
          Mac_State	:	OUT	STD_LOGIC_VECTOR (1 DOWNTO 0); 
          MR	:	OUT	STD_LOGIC; 
          MW	:	OUT	STD_LOGIC; 
          IR_CE	:	OUT	STD_LOGIC; 
          PC_STEP	:	OUT	STD_LOGIC; 
          GPR_WE	:	OUT	STD_LOGIC; 
          A_EN	:	OUT	STD_LOGIC; 
          B_EN	:	OUT	STD_LOGIC; 
          C_EN	:	OUT	STD_LOGIC; 
          IN_INIT	:	OUT	STD_LOGIC; 
          MDR_EN	:	OUT	STD_LOGIC; 
          A_sel	:	OUT	STD_LOGIC; 
          DINT_sel	:	OUT	STD_LOGIC; 
          JLINK	:	OUT	STD_LOGIC; 
          TEST	:	OUT	STD_LOGIC; 
          MAR_EN	:	OUT	STD_LOGIC; 
          MDR_sel	:	OUT	STD_LOGIC; 
          SHIFT	:	OUT	STD_LOGIC; 
          S1_sel	:	OUT	STD_LOGIC_VECTOR (1 DOWNTO 0); 
          ADD	:	OUT	STD_LOGIC; 
          S2_sel	:	OUT	STD_LOGIC_VECTOR (1 DOWNTO 0); 
          DLX_State	:	OUT	STD_LOGIC_VECTOR (4 DOWNTO 0); 
          STOP_N	:	OUT	STD_LOGIC; 
          ITYPE	:	OUT	STD_LOGIC; 
          imm	:	IN	STD_LOGIC_VECTOR (15 DOWNTO 0));
   END COMPONENT;

   SIGNAL clk	:	STD_LOGIC;
   SIGNAL reset	:	STD_LOGIC;
   SIGNAL ACK_N	:	STD_LOGIC;
   SIGNAL STEP_EN	:	STD_LOGIC;
   SIGNAL AEQZ	:	STD_LOGIC;
   SIGNAL OPCODE	:	STD_LOGIC_VECTOR (5 DOWNTO 0);
   SIGNAL BUSY	:	STD_LOGIC;
   SIGNAL AS_N	:	STD_LOGIC;
   SIGNAL WR_N	:	STD_LOGIC;
   SIGNAL Mac_State	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
   SIGNAL MR	:	STD_LOGIC;
   SIGNAL MW	:	STD_LOGIC;
   SIGNAL IR_CE	:	STD_LOGIC;
   SIGNAL PC_STEP	:	STD_LOGIC;
   SIGNAL GPR_WE	:	STD_LOGIC;
   SIGNAL A_EN	:	STD_LOGIC;
   SIGNAL B_EN	:	STD_LOGIC;
   SIGNAL C_EN	:	STD_LOGIC;
   SIGNAL IN_INIT	:	STD_LOGIC;
   SIGNAL MDR_EN	:	STD_LOGIC;
   SIGNAL A_sel	:	STD_LOGIC;
   SIGNAL DINT_sel	:	STD_LOGIC;
   SIGNAL JLINK	:	STD_LOGIC;
   SIGNAL TEST	:	STD_LOGIC;
   SIGNAL MAR_EN	:	STD_LOGIC;
   SIGNAL MDR_sel	:	STD_LOGIC;
   SIGNAL SHIFT	:	STD_LOGIC;
   SIGNAL S1_sel	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
   SIGNAL ADD	:	STD_LOGIC;
   SIGNAL S2_sel	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
   SIGNAL DLX_State	:	STD_LOGIC_VECTOR (4 DOWNTO 0);
   SIGNAL STOP_N	:	STD_LOGIC;
   SIGNAL ITYPE	:	STD_LOGIC;
   SIGNAL imm	:	STD_LOGIC_VECTOR (15 DOWNTO 0);

BEGIN

   UUT: DLX_Full_Control PORT MAP(
		clk => clk, 
		reset => reset, 
		ACK_N => ACK_N, 
		STEP_EN => STEP_EN, 
		AEQZ => AEQZ, 
		OPCODE => OPCODE, 
		BUSY => BUSY, 
		AS_N => AS_N, 
		WR_N => WR_N, 
		Mac_State => Mac_State, 
		MR => MR, 
		MW => MW, 
		IR_CE => IR_CE, 
		PC_STEP => PC_STEP, 
		GPR_WE => GPR_WE, 
		A_EN => A_EN, 
		B_EN => B_EN, 
		C_EN => C_EN, 
		IN_INIT => IN_INIT, 
		MDR_EN => MDR_EN, 
		A_sel => A_sel, 
		DINT_sel => DINT_sel, 
		JLINK => JLINK, 
		TEST => TEST, 
		MAR_EN => MAR_EN, 
		MDR_sel => MDR_sel, 
		SHIFT => SHIFT, 
		S1_sel => S1_sel, 
		ADD => ADD, 
		S2_sel => S2_sel, 
		DLX_State => DLX_State, 
		STOP_N => STOP_N, 
		ITYPE => ITYPE, 
		imm => imm
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
	   step_en <= '0';
		ack_n <= '1';
		reset <= '1';
		AEQZ <= '0';
		imm <= "0000000000000000";
		
		opcode <= "011000"; --TESTI
		wait for 202 ns;
		step_en <= '1';
		reset <= '0';
		wait for 200 ns;
		step_en <= '0';
		wait for 400 ns;
		ack_n <= '0';
		wait for 400 ns;
		ack_n <= '1';
		wait for 400 ns;
		ack_n <= '0';
		wait for 400 ns;
		ack_n <= '1';
		wait for 500 ns;
		reset<='1';
		wait for 200 ns;
		opcode <= "100000"; --lw.
		wait for 202 ns;
		step_en <= '1';
		reset <= '0';
		wait for 200 ns;
		step_en <= '0';
		wait for 400 ns;
		ack_n <= '0';
		wait for 400 ns;
		ack_n <= '1';
		wait for 400 ns;
		ack_n <= '0';
		wait for 400 ns;
		ack_n <= '1';
		wait for 500 ns;
		reset<='1';
		wait for 200 ns;
		opcode <= "101000"; --sw
		wait for 202 ns;
		step_en <= '1';
		reset <= '0';
		wait for 200 ns;
		step_en <= '0';
		wait for 400 ns;
		ack_n <= '0';
		wait for 400 ns;
		ack_n <= '1';
		wait for 400 ns;
		ack_n <= '0';
		wait for 400 ns;
		ack_n <= '1';
		wait for 500 ns;
		reset<='1';
		wait for 200 ns;
		opcode <= "000000"; --branch
		wait for 202 ns;
		step_en <= '1';
		reset <= '0';
		wait for 200 ns;
		step_en <= '0';
		wait for 400 ns;
		ack_n <= '0';
		wait for 400 ns;
		ack_n <= '1';
		wait for 400 ns;
		ack_n <= '0';
		wait for 400 ns;
		ack_n <= '1';
		wait for 500 ns;
		reset<='1';
		wait for 200 ns;
		opcode <= "010000"; --jr\jalr
		wait for 202 ns;
		step_en <= '1';
		reset <= '0';
		wait for 200 ns;
		step_en <= '0';
		wait for 400 ns;
		ack_n <= '0';
		wait for 400 ns;
		ack_n <= '1';
		wait for 400 ns;
		ack_n <= '0';
		wait for 400 ns;
		ack_n <= '1';
		wait for 500 ns;
		reset<='1';
		wait for 200 ns;
		opcode <= "111000"; --halt
		wait for 202 ns;
		step_en <= '1';
		reset <= '0';
		wait for 200 ns;
		step_en <= '0';
		wait for 400 ns;
		ack_n <= '0';
		wait for 400 ns;
		ack_n <= '1';
		wait for 400 ns;
		ack_n <= '0';
		wait for 400 ns;
		ack_n <= '1';
		wait for 500 ns;
		reset<='1';
		wait for 200 ns;
		opcode <= "110000"; --special nop.
		wait for 202 ns;
		step_en <= '1';
		reset <= '0';
		wait for 200 ns;
		step_en <= '0';
		wait for 400 ns;
		ack_n <= '0';
		wait for 400 ns;
		ack_n <= '1';
		wait for 400 ns;
		ack_n <= '0';
		wait for 400 ns;
		ack_n <= '1';
		reset<='1';
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
