----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:27:10 05/30/2022 
-- Design Name: 
-- Module Name:    DLX_Full_StateMachine - Behavioral 
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

entity DLX_Full_StateMachine is
	Port ( clk : in  STD_LOGIC;
           step_en : in  STD_LOGIC;
           busy : in  STD_LOGIC;
           AEQZ : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           opcode : in  STD_LOGIC_VECTOR (5 downto 0);
           imm : in  STD_LOGIC_VECTOR (15 downto 0);
           in_init : out  STD_LOGIC;
           mr  : out  STD_LOGIC;
           mw : out  STD_LOGIC;
           gpr_we : out  STD_LOGIC;
           A_ce : out  STD_LOGIC;
           B_ce : out  STD_LOGIC;
           C_ce : out  STD_LOGIC;
           MDR_ce : out  STD_LOGIC;
           MAR_ce : out  STD_LOGIC;
           IR_ce : out  STD_LOGIC;
           PC_ce : out  STD_LOGIC;
           test : out  STD_LOGIC;
           Asel : out  STD_LOGIC;
           DINTset : out  STD_LOGIC;
           MDRsel : out  STD_LOGIC;
           shift_en : out  STD_LOGIC;
           add : out  STD_LOGIC;
           jlink : out  STD_LOGIC;
           itype : out  STD_LOGIC;
           S1sel : out  STD_LOGIC_VECTOR (1 downto 0);
           S2sel : out  STD_LOGIC_VECTOR (1 downto 0);
           state_out : out  STD_LOGIC_VECTOR (4 downto 0));
end DLX_Full_StateMachine;

architecture Behavioral of DLX_Full_StateMachine is
----------------Signals---------------------------------
signal bt: STD_LOGIC;
signal state: STD_LOGIC_VECTOR(4 downto 0);

constant INIT:        STD_LOGIC_VECTOR(4 downto 0):= "00000";
constant FETCH:       STD_LOGIC_VECTOR(4 downto 0):= "00001";
constant DECODE:      STD_LOGIC_VECTOR(4 downto 0):= "00010";
constant ALU:         STD_LOGIC_VECTOR(4 downto 0):= "00011";
constant SHIFT:       STD_LOGIC_VECTOR(4 downto 0):= "00100";
constant TESTI:       STD_LOGIC_VECTOR(4 downto 0):= "00101";
constant ALUI:        STD_LOGIC_VECTOR(4 downto 0):= "00110";
constant ADRCOMP:     STD_LOGIC_VECTOR(4 downto 0):= "00111";
constant LOAD:        STD_LOGIC_VECTOR(4 downto 0):= "01000";
constant STORE:       STD_LOGIC_VECTOR(4 downto 0):= "01001";
constant COPYMDR2C:   STD_LOGIC_VECTOR(4 downto 0):= "01010";
constant COPYGPR2MDR: STD_LOGIC_VECTOR(4 downto 0):= "01011";
constant WBR:         STD_LOGIC_VECTOR(4 downto 0):= "01100";
constant WBI:         STD_LOGIC_VECTOR(4 downto 0):= "01101";
constant BRANCH:      STD_LOGIC_VECTOR(4 downto 0):= "01110";
constant BTAKEN:      STD_LOGIC_VECTOR(4 downto 0):= "01111";
constant JR:          STD_LOGIC_VECTOR(4 downto 0):= "10000";
constant SAVEPC:      STD_LOGIC_VECTOR(4 downto 0):= "10001";
constant JALR:        STD_LOGIC_VECTOR(4 downto 0):= "10010";
constant HALT:        STD_LOGIC_VECTOR(4 downto 0):= "10011";

begin

main: PROCESS (clk, reset)
begin
 
	  if ((clk'event) and (clk='1')) then
	    if (reset = '1') then
	      state <= INIT; 
	    else
		   bt <= AEQZ xor opcode(0);
	      case state is
		     when INIT =>
			    if (step_en = '1') then
			      state <= FETCH;
			    else
			      state <= INIT;
			    end if;
			  
			  when FETCH =>
			    if (busy = '1') then
			      state <= FETCH;
			    else
			      state <= DECODE;
			    end if;
			  
			  when DECODE =>
			    if (opcode(5 downto 3) = "110") then
				   if (step_en = '1') then
                 state <= FETCH;
               else
                 state <= INIT;	
               end if;
             elsif (opcode(5 downto 2) = "0000") then
               if (imm(5) = '1') then
                 state <= ALU;
               else
                 state <= SHIFT;	
               end if;		
             elsif (opcode(5 downto 3) = "001") then
               state <= ALUI;	
             elsif (opcode(5 downto 3) = "011") then
               state <= TESTI;
             elsif (opcode(5 downto 4) = "10") then
               state <= ADRCOMP;
             elsif (opcode(5 downto 3) = "010") then
               if (opcode(0) = '1') then
					  state <= SAVEPC;
					else
					  state <= JR;
					end if;
				 elsif (opcode(5 downto 2) = "0001") then
               state <= BRANCH;
				 else
				   state <= HALT;
				 end if;
			  
			  when SHIFT =>
			    state <= WBR;
			  
			  when ALU =>
			    state <= WBR;
			  
			  when WBR =>
			    if (step_en = '1') then
				   state <= FETCH;
				 else
				   state <= INIT;
				 end if;
			  
			  when TESTI =>
			    state <= WBI;
			  
			  when ALUI =>
			    state <= WBI;
			  
			  when WBI =>
			    if (step_en = '1') then
				   state <= FETCH;
			    else
				   state <= INIT;
				 end if;
			  
			  when ADRCOMP =>
			    if (opcode(3) = '0') then
				   state <= LOAD;
				 else 
				   state <= COPYGPR2MDR;
				 end if;
			  
			  when LOAD =>
			    if (busy = '1') then
				   state <= LOAD;
				 else
				   state <= COPYMDR2C;
				 end if;
			  
			  when COPYMDR2C =>
			    state <= WBI;
			  
			  when COPYGPR2MDR =>
			  state <= STORE;
			  
			  when STORE =>
			    if (busy = '1') then
				   state <= STORE;
				 else
				   if (step_en = '1') then
					  state <= FETCH;
					else
					  state <= INIT;
					end if;
				 end if;
			  
			  when JR =>
			    if (step_en = '1') then
				   state <= FETCH;
				 else
				   state <= INIT;
				 end if;
			  
			  when SAVEPC =>
			    state <= JALR;
			  
			  when JALR =>
			    if (step_en = '1') then
				   state <= FETCH;
				 else
				   state <= INIT;
				 end if;
			  
			  when BRANCH =>
			    if (bt = '1') then
				   state <= BTAKEN;
			    else
				   if (step_en = '1') then
					  state <= FETCH;
					else 
					  state <= INIT;
					end if;
			    end if;
			  
			  when BTAKEN =>
			    if (step_en = '1') then
				   state <= FETCH;
			    else 
				   state <= INIT;
				 end if;
			  
			  when HALT =>
			    state <= HALT;
			  when others => NULL;
			end case;
	    end if;
	  end if;
end process main;

state_out <= state;
in_init <= '1' when (state = INIT or state = HALT) else '0';
mr <= '1' when (state = LOAD or state = FETCH) else '0';
mw <= '1' when (state = STORE) else '0'; 
gpr_we <= '1' when (state = JALR  or state = WBI or state = WBR) else '0';
A_ce <= '1' when (state = DECODE) else '0';
B_ce <= '1' when (state = DECODE) else '0';
C_ce <= '1' when (state = SHIFT or state = ALU or state = ALUI or state = SAVEPC or state = TESTI or state = COPYMDR2C) else '0';
MDR_ce <= '1' when (state = COPYGPR2MDR or state = LOAD) else '0';
MAR_ce <= '1' when (state = ADRCOMP) else '0';
IR_ce <= '1' when (state = FETCH) else '0';
PC_ce <= '1' when (state = JR or state = JALR or state = BTAKEN or state = DECODE) else '0'; 
test <= '1' when (state = TESTI) else '0';
Asel <= '1' when (state = STORE or state = LOAD) else '0';
DINTset <= '1' when (state = SHIFT or state = COPYGPR2MDR or state = COPYMDR2C) else '0';
MDRsel <= '1' when (state = LOAD) else '0';
shift_en <= '1' when (state = SHIFT) else '0';
add <= '1' when (state = DECODE or state =ALUI or state = JR or state = JALR or state =SAVEPC or state = BTAKEN or state = ADRCOMP) else '0';
jlink <= '1' when (state = JALR) else '0';
itype <= '1' when (state = ALUI or state = WBI or state = TESTI) else '0';
S1sel(0) <= '1' when (state = SHIFT or state = ALU or state = ALUI or state = TESTI or state = JR or state = JALR or state = ADRCOMP or state = COPYMDR2C) else '0';
S1sel(1) <= '1' when (state = COPYMDR2C or state = COPYGPR2MDR) else '0';
S2sel(0) <= '1' when (state = ALUI or state = DECODE or state = TESTI or state = BTAKEN or state = ADRCOMP) else '0';
S2sel(1) <= '1' when (state = DECODE or state = COPYMDR2C or state = COPYGPR2MDR or state = JR or state = JALR or state = SAVEPC) else '0';
end Behavioral;

