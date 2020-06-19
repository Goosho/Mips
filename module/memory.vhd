library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity memory is
	port(
		address: in std_logic_vector(31 downto 0);
		write_data: std_logic_vector(31 downto 0);
		btn: in std_logic;
		MemWrite,MemRead: in std_logic;
		read_data: buffer std_logic_vector(31 downto 0)
	);
end memory;

architecture bhv of memory is
type mem_array is array (0 to 7) of std_logic_vector(31 downto 0);
shared variable  data_mem: mem_array:=(
									X"00000000",
									X"11111111", 
									X"22222222",
									X"33333333",
									X"44444444", 
									X"55555555", 
									X"66666666",
									X"77777777"
									);

begin

	process(btn,address,write_data)

	variable addr: integer;
	variable mem_content: std_logic_vector(31 downto 0);
	begin
		addr:=to_integer(unsigned(address(2 downto 0))); 
		mem_content:=write_data;
		if MemWrite='1' then
			data_mem(addr):=mem_content;
		end if;
		if MemRead='1'then
			mem_content:=data_mem(addr);
			read_data<=mem_content;
		end if;
		read_data<=mem_content;
		
	end process;



end bhv;