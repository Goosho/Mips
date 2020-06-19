library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity execute is 
	port(
		PC4,register_rs,register_rt,immediate: in std_logic_vector(31 downto 0);
		ALUOP: in std_logic_vector(1 downto 0);
		ALUSrc,clock:in std_logic;
		beq_control: in std_logic;
		alu_result, branch_addr : out std_logic_vector(31 downto 0);
		branch_decision: out std_logic
	);
end execute;

architecture bhv of execute is
 
begin 
		

	process(clock)
		variable alu_output: std_logic_vector(31 downto 0);
		variable zero: std_logic;
		variable branch_offset, temp_branch_addr: std_logic_vector(31 downto 0);
	begin
		if(clock'event and clock='1') then
		
				case ALUOP is 
					when "00" => alu_output:=(register_rs + immediate);
					when "01" => 
							if(register_rs=register_rt)then
								temp_branch_addr:=x"0000" & immediate(15 downto 0);
								alu_output:=PC4+(temp_branch_addr) ;
							
							end if;
					
					when "10" => 
						case immediate(5 downto 0) is
							when "100000" => alu_output := register_rs + register_rt;
							when "100010" => alu_output := register_rs - register_rt;     
							when "100001" => alu_output := register_rs + register_rt;
							when "100100" => alu_output := register_rs and register_rt;
							when "001000" => alu_output := register_rs ;
							when "100111" => alu_output := not(register_rs or register_rt);
							when "100101" => alu_output := (register_rs or register_rt);
							when "101010" =>
									if	(register_rs<register_rt)then 
											alu_output :="00000000000000000000000000000001";
									elsif(register_rs>register_rt)then
											alu_output := x"00000000";
									end if;
							when "101011" =>
												if	(register_rs<register_rt)then 
														alu_output :="00000000000000000000000000000001";
												elsif(register_rs>register_rt)then
														alu_output := x"00000000";
												end if;
						--	when "000000" =>
						--						for i in "00000" to immediate(10 downto 6) loop
							--						alu_output:= register_rt(30 downto 0)& "0"; 
								--				end loop;
							
					
					--		when "000010" =>
						---						for i in "00000" to immediate(10 downto 6) loop
							--						alu_output:= "0" & register_rt(31 downto 1); 
								--				end loop;
					
							when "100011" => alu_output := register_rs - register_rt;
							
							when others => alu_output:=x"ffffffff";
				end case;	
											when others => alu_output:=x"ffffffff";

			end case;
		if (alu_output=x"0000000")then
			zero:='1';
		else 
			zero:='0';
		end if;
		--branch_offset:=immediate;
		branch_decision <= (beq_control and zero);
		branch_addr <= temp_branch_addr;
		alu_result <= alu_output;
		END if;
		
	end process;
end bhv;

	
	
	
	
	
	
	
	
	
