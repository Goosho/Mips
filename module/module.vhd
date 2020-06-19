library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.my_components.all; 

entity module is
		port(
			fpga_clk:  std_logic;
			alu,inst: out std_logic_vector(31 downto 0)
		);
end module;

architecture bhv of module is 
shared	variable instruction,m_register_rt,m_register_rs,m_register_rd,m_branch_addr,m_jump_address,m_immediate,m_Alu_result,pc_out,memory_data: std_logic_vector(31 downto 0);
shared variable m_jump_dec,m_RegDst,m_RegWrite,m_MemToReg,m_ALUSrc,m_beq_control,m_MemRead,m_branch_dec: std_logic;
shared variable m_ALUOp: std_logic_vector(1 downto 0);


begin
	U0: control port map(
		instruction=>instruction,
		btn=>fpga_clk,
		jump_dec=>m_jump_dec,
		RegDst=>m_RegDst,
		RegWrite=>m_RegWrite,
		MemToReg=>m_MemToReg,
		ALUSrc=>m_ALUSrc,
		beq_control=>m_beq_control,
		MemRead=>m_MemRead,
		MemWrite=>m_MemRead,
		ALUOp=>m_ALUOp
	);

		U1: fetch port map(
		clk=>fpga_clk,
		branch_add=>m_branch_addr,
		jump_add=>m_jump_address,
		branch_dec=>m_branch_dec,
		jump_dec=>m_jump_dec,
		pc_out=>pc_out,
		instr=>instruction);
	
	
	U2: decode port map (
			instruction=>instruction,
			memory_data=>memory_data,
			Alu_result=>m_Alu_result,
			clk=>fpga_clk,
			RegDst=>m_RegDst,
			RegWrite=>m_RegWrite,
			MemToReg =>m_MemToReg,
			register_rs=>m_register_rs,
			register_rt=>m_register_rt,
			register_rd=>m_register_rd,
			jump_addr=>m_jump_address,
			immediate=>m_immediate
			);
		
	U3: memory port map(
		address=>m_Alu_result,
		write_data=>m_register_rt,
		btn=>fpga_clk,
		MemWrite=>m_RegWrite,
		MemRead=>m_MemRead,
		read_data=>memory_data
	);
			alu<=m_Alu_result;
			inst<=instruction;
end bhv;
	