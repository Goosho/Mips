library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
--use work.mypackage.all;

entity fetch is
	port(
	--	reset: in std_logic;
		clk: in std_logic;
		branch_add: in std_logic_vector(31 downto 0);
		jump_add: in std_logic_vector(31 downto 0);
		branch_dec: in std_logic;
		jump_dec: in std_logic;
		pc_out: out std_logic_vector(31 downto 0);
		instr: out std_logic_vector(31 downto 0)
	);
	
end fetch;

architecture bhv of fetch is

	type mem_array is array(0 to 15) of std_logic_vector(31 downto 0);
	
		shared variable mem: mem_array:=( 
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
	shared variable PC : std_logic_vector(31 downto 0); 
	shared variable index : integer := 0;
begin

	process(clk)
		begin	
		
			if(rising_edge(clk))then
						index := to_integer(unsigned(PC(3 downto 0)));
						instr <= mem(index);
						PC := PC + X"1";
						PC_out <= PC;
			end if;
		
				
			
			if(branch_dec='1' and rising_edge(clk) )then
						PC := branch_add;
						index := to_integer(unsigned(PC(3 downto 0)));
						instr <= mem(index);
						PC := PC + X"1";
						PC_out <= PC;	
					end if;
					
			
			if(jump_dec='1' and rising_edge(clk) )then
						PC:= jump_add;
						index := to_integer(unsigned(PC(3 downto 0)));
						instr <= mem(index);	
						PC := PC + X"1";
						PC_out <= PC;
					end if;
				
			if ( rising_edge(clk) )then
					PC:=X"00000000";
					PC := PC + X"1";
					PC_out <= PC;
					instr<=X"00000000";
				end if;
	end process;
	end bhv;
	