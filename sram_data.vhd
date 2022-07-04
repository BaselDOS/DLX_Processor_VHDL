library IEEE;
use IEEE.STD_LOGIC_1164.all;

-- Package for SRAM pre-initialization data
package sram_data is

	-- Size of pre instantiated data
	constant data_size: integer := 37;
	
	type pre_inst_data is array(0 to data_size-1) of std_logic_vector(31 downto 0);
	constant pre_inst_mem : pre_inst_data := ( 
	-- The actual data :
							X"8C010020", -- 0x0 lw R1 R0 data1
							X"8C020021", -- 0x1 lw R2 R0 data2
							X"8C030022", -- 0x2 lw R3 R0 data3
							X"00432026", -- 0x3 and R4 R2 R3
							X"00432824", -- 0x4 xor R5 R2 R3 
							X"00433025", -- 0x5 or R6 R2 R3
							X"6C27000A", -- 0x6 sgei R7 R1 10
							X"6C270009", -- 0x7 sgei R7 R1 9
							X"6427000A", -- 0x8 sgti R7 R1 10
							X"64270008", -- 0x9 sgti R7 R1 8
							X"78270008", -- 0xa slei R7 R1 8
							X"78270009", -- 0xb slei R7 R1 9
							X"70270008", -- 0xc slti R7 R1 8
							X"7027000A", -- 0xd slti R7 R1 10
							X"6827000A", -- 0xe seqi R7 R1 10
							X"68270009", -- 0xf seqi R7 R1 9
							X"74270009", -- 0x10 snei R7 R1 9
							X"74270008", -- 0x11 snei R7 R1 8
							X"2C080015", -- 0x12 addi R8 R0 start1
							X"5D1F0000", -- 0x13 jalr R8
							X"101F000A", -- 0x14 start2: beqz R0 stop3
							X"2C080003", -- 0x15 start1: addi R8 R0 3
							X"2D08FFFF", -- 0x16 stop2: addi R8 R8 -1
							X"151FFFFE", -- 0x17 bnez R8 stop2
							X"00225023", -- 0x18 add R10 R1 R2
							X"00625822", -- 0x19 sub R11 R3 R2
							X"003F6000", -- 0x1a slli R12 R1
							X"003F6802", -- 0x1b srli R13 R1
							X"AC0E0023", -- 0x1c sw R14 R0 adr1
							X"AC0F0024", -- 0x1d sw R15 R0 adr2
							X"5BFF0000", -- 0x1e jr R31
							X"FFFF0000", -- 0x2f stop3: halt
							X"00000009", -- 0x20 data1: dc 0x9
							X"FFFFAAAA", -- 0x21 data2: dc 0xffffaaaa
							X"00005555", -- 0x22 data3: dc 0x00005555
							X"00000001", -- 0x23 adr1: dc 0x1
							X"00000002", -- 0x24 adr2: dc 0x2
							X"C3FF0000"  -- 0x25 special-nop
							 ); 

end sram_data;

package body sram_data is

 
end sram_data;
