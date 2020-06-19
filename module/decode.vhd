library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity decode is
	port(
			instruction :in std_logic_vector(31 downto 0);
			memory_data :in std_logic_vector(31 downto 0);
			Alu_result: in std_logic_vector(31 downto 0);
			clk,RegDst,RegWrite,MemToReg :in std_logic;
			register_rs,register_rt,register_rd,jump_addr,immediate: out std_logic_vector(31 downto 0)
			);
			
end decode;


architecture bhv of decode is

	type mem_array is array (0 to 31) of std_logic_vector(31 downto 0);
	signal reg: mem_array:=( 
									X"00000000",
									X"11111111", 
									X"22222222",
									X"33333333",
									X"44444444", 
									X"55555555", 
									X"66666666",
									X"77777777", 
									X"88888888", 
									X"99999999",
									X"aaaaaaaa",
									X"bbbbbbbb", 
									X"cccccccc", 
									X"dddddddd",
									X"eeeeeeee",
									X"ffffffff",
									X"00000000",
									X"11111111", 
									X"22222222",
									X"33333333",
									X"44444444", 
									X"55555555", 
									X"66666666",
									X"77777777", 
									X"88888888", 
									X"99999999",
									X"aaaaaaaa",
									X"bbbbbbbb", 
									X"cccccccc", 
									X"dddddddd",
									X"eeeeeeee",
									X"ffffffff"
									);
	shared variable write_register: std_logic_vector(4 downto 0);  
begin

	process(clk)
	variable write_value: std_logic_vector(31 downto 0);
	variable rs,rt,rd:std_logic_vector(4 downto 0);
		begin
			
				-----rs:=instruction(25 downto 21);
				rt:=instruction(20 downto 16);
				rd:=instruction(15 downto 11);
				
				if (RegDst='0')then
						write_register:=rt;
				end if;
				
				if (RegDst='1')then
						write_register:=rd;
				end if;
				
				if(RegWrite='1')then
					if(MemToReg='1')then
						write_value:=memory_data;
					else 
						write_value:=Alu_result;
					end if;		
				
				if(rd="00000")then
					reg(to_integer(unsigned(rd)))<=x"00000000";
				else
					reg(to_integer(unsigned(rd)))<=write_value;
				end if;
				end if;
	end process;
	
	
	process(instruction)
	
		variable rt,rs,imm_instr,jump_imm_instr : std_logic_vector(31 downto 0);
		variable addr1,addr2 : std_logic_vector(4 downto 0);
	
	begin
	
		addr1 := instruction(25 downto 21);
		addr2 := instruction(20 downto 16); 
	
		rs:=reg(to_integer(unsigned(addr1)));
		rt:=reg(to_integer(unsigned(addr2)));
				
		imm_instr(15 downto 0):=instruction(15 downto 0);		
		if(instruction(15)='1')then
			imm_instr(31 downto 16):=x"ffff";
		else 
			imm_instr(31 downto 16):=x"0000";
		end if;
		
		jump_imm_instr(31 downto 26):="000000";
		jump_imm_instr(25 downto 0):=instruction(25 downto 0);		
		jump_imm_instr(31 downto 0):= jump_imm_instr(31 downto 28) & jump_imm_instr(25 downto 0) & "00";
		
		register_rs<=rs;
		register_rt<=rt;
		immediate<=imm_instr;
	
	end process;
	
	
end bhv;