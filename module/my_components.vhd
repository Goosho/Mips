library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;



package my_components is 

component control is
	port(
		instruction : in std_logic_vector(31 downto 0);
		btn:in std_logic;
		jump_dec,RegDst,RegWrite,MemToReg,ALUSrc,beq_control,MemRead,MemWrite:out std_logic;
		ALUOp:out std_logic_vector(1 downto 0)
	);
end component;



component memory is
	port(
		address: in std_logic_vector(31 downto 0);
		write_data: std_logic_vector(31 downto 0);
		btn: in std_logic;
		MemWrite,MemRead: in std_logic;
		read_data: buffer std_logic_vector(31 downto 0)
	);
end component;
	
component execute is 
	port(
		PC4,register_rs,register_rt,immediate: in std_logic_vector(31 downto 0);
		ALUOP: in std_logic_vector(1 downto 0);
		ALUSrc,clock:in std_logic;
		beq_control: in std_logic;
		alu_result, branch_addr : out std_logic_vector(31 downto 0);
		branch_decision: out std_logic
	);
end component;


	component fetch is 
			port(
	--		reset: in std_logic;
			clk: in std_logic;
			branch_add: in std_logic_vector(31 downto 0);
			jump_add: in std_logic_vector(31 downto 0);
			branch_dec: in std_logic;
			jump_dec: in std_logic;
			pc_out: out std_logic_vector(31 downto 0);
			instr: out std_logic_vector(31 downto 0)
		--	ssd0,ssd1,ssd2,ssd3: out std_logic_vector(6 downto 0)
	);
	end component;
	
	component decode is
			port(
			instruction :in std_logic_vector(31 downto 0);
			memory_data :in std_logic_vector(31 downto 0);
			Alu_result: in std_logic_vector(31 downto 0);
			clk,RegDst,RegWrite,MemToReg :in std_logic;
			register_rs,register_rt,register_rd,jump_addr,immediate: out std_logic_vector(31 downto 0)
			);
	end component;
	
	
		component lcd_controller is
		port (
			clk:in std_logic;
			reset_n:in std_logic;
			rw,rs,e:out std_logic;
			lcd_data:out std_logic_vector(7 downto 0);
			line1_buffer:in std_logic_vector(127 downto 0);
			line2_buffer:in std_logic_vector(127 downto 0)
			);
	end component;
	
	
component module is
		port(
			fpga_clk:  std_logic;
			alu,inst: out std_logic_vector(31 downto 0)
		);
end component;
---------------------------function declaration-------------------------
	function hex_to_ascii(hex: in std_logic_vector(31 downto 0))
		return std_logic_vector;
------------------------------------------------------------------------	
	
	
end my_components;



package body my_components is
----------------------------function body-------------------------------	
	function hex_to_ascii(hex: in std_logic_vector(31 downto 0))
		return std_logic_vector is
			variable temp: std_logic_vector(127 downto 0);----- ASCII value will be stored in it of 8bit hex
			variable counter: integer range 0 to 127 := 0;----- It will move forward by 4 bcz 1 hex bit is 4 binary bits
			type mem_array is array (0 to 15) of std_logic_vector(7 downto 0); --- this is array. hex values are index and its ascii value is sotred at that index
			variable mem : mem_array:=(x"30",x"31",x"32",x"33",x"34",x"35", --- 0=30  1=31
											x"36",x"37",x"38",x"39",x"41",x"42",
											x"43",x"44",x"45",x"46");
			type mem_array1 is array (0 to 7) of std_logic_vector(7 downto 0);
			variable temp2: mem_array1;
		begin
				for i in 0 to 7 loop
					temp2(i):=mem(to_integer (unsigned(hex((counter+3) downto counter)) ));
					counter:= counter +4;
				end loop;
				temp:= x"20202020"& temp2(7) & temp2(6) & temp2(5) & temp2(4) & temp2(3) & temp2(2) & temp2(1) & temp2(0) & x"20202020" ;
	return std_logic_vector(temp);
		end;
------------------------------------------------------------------------
end package body my_components;

