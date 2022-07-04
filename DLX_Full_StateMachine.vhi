
-- VHDL Instantiation Created from source file DLX_Full_StateMachine.vhd -- 12:26:58 06/02/2022
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT DLX_Full_StateMachine
	PORT(
		clk : IN std_logic;
		reset : IN std_logic;
		STEP_N : IN std_logic;
		busy : IN std_logic;
		opcode : IN std_logic_vector(5 downto 0);
		FunctionR : IN std_logic_vector(5 downto 0);
		ACK_N : IN std_logic;
		AEQZ : IN std_logic;          
		MR : OUT std_logic;
		MW : OUT std_logic;
		IR_CE : OUT std_logic;
		PC_STEP : OUT std_logic;
		GPR_WE : OUT std_logic;
		A_EN : OUT std_logic;
		B_EN : OUT std_logic;
		C_EN : OUT std_logic;
		IN_INIT : OUT std_logic;
		state : OUT std_logic_vector(4 downto 0);
		s1_sel : OUT std_logic_vector(1 downto 0);
		s2_sel : OUT std_logic_vector(1 downto 0);
		MDR_sel : OUT std_logic;
		A_sel : OUT std_logic;
		DINT_sel : OUT std_logic;
		JLINK : OUT std_logic;
		IS_ITYPE : OUT std_logic;
		TEST : OUT std_logic;
		ADD : OUT std_logic;
		SHIFT : OUT std_logic;
		MAR_EN : OUT std_logic;
		MDR_EN : OUT std_logic
		);
	END COMPONENT;

	Inst_DLX_Full_StateMachine: DLX_Full_StateMachine PORT MAP(
		clk => ,
		reset => ,
		STEP_N => ,
		busy => ,
		opcode => ,
		FunctionR => ,
		ACK_N => ,
		AEQZ => ,
		MR => ,
		MW => ,
		IR_CE => ,
		PC_STEP => ,
		GPR_WE => ,
		A_EN => ,
		B_EN => ,
		C_EN => ,
		IN_INIT => ,
		state => ,
		s1_sel => ,
		s2_sel => ,
		MDR_sel => ,
		A_sel => ,
		DINT_sel => ,
		JLINK => ,
		IS_ITYPE => ,
		TEST => ,
		ADD => ,
		SHIFT => ,
		MAR_EN => ,
		MDR_EN => 
	);


