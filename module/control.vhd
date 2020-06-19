library ieee;
use ieee.std_logic_1164.all;

entity control is
	port(
		instruction : in std_logic_vector(31 downto 0);
		btn :in std_logic;
		jump_dec,RegDst,RegWrite,MemToReg,ALUSrc,beq_control,MemRead,MemWrite:out std_logic;
		ALUOp:out std_logic_vector(1 downto 0)
	);
end control;

architecture bhv of control is

begin

	process(btn)
	variable rformat,lw,sw,beq,jmp,addi:std_logic;
	variable opcode: std_logic_vector(5 downto 0);
	begin
		
			opcode(5 downto 0):= instruction(31 downto 26);
			
			if (opcode="000000") then
				rformat:='1';
			else
				rformat:='0';
			end if;
			
			if opcode="100011"then
				lw:='1';
			else
				lw:='0';
			end if;
			
			if opcode="000100"then
				beq:='1';
			else
				beq:='0';
			end if;
			
			if opcode="101011"then
				sw:='1';
			else
				sw:='0';
			end if;
			
			if opcode="001000"then
				addi:='1';
			else
				addi:='0';

			end if;			
			
			
			if rformat='1' then
				regDst<='1';
				ALUSrc<='0';
				MemToReg<='0';
				regWrite<='1';
				memRead<='0';
				memWrite<='0';
				beq_control<='0';
				AlUOp(1)<='1';
				ALUop(0)<='0';
			
			end if;
	
		if lw='1' then
		
				regDst<='0';
				ALUSrc<='1';
				MemToReg<='1';
				regWrite<='1';
				memRead<='1';
				memWrite<='0';
				beq_control<='0';
				AlUOp(1)<='0';
				ALUop(0)<='0';
			
			end if;
			
		if sw='1' then
				regDst<='0';
				ALUSrc<='1';
				MemToReg<='0';
				regWrite<='0';
				memRead<='0';
				memWrite<='1';
				beq_control<='0';
				AlUOp(1)<='0';
				ALUop(0)<='0';
			
			end if;
			
		
	end process;
end bhv;