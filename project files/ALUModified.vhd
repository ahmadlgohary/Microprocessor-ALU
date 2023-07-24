library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
ENTITY ALUModified IS 
port (Clock: in std_logic;
		A,B : in unsigned(7 downto 0);
		student_id : unsigned(3 downto 0);
		OP: in unsigned(15 downto 0);
		Neg: out std_logic;
		R1: out unsigned (3 downto 0);
		R2: out unsigned (3 downto 0));
		end ALUModified;
ARCHITECTURE calculation of ALUModified IS
	signal Reg1, Reg2, Result: unsigned (7 downto 0):= (others=>'0');
	signal Reg4 : unsigned (0 to 7);
	begin
	Reg1 <= A;
	Reg2 <= B;
	process(Clock,OP)
	begin
		if(rising_edge (Clock)) Then
		case OP is 
		When "0000000000000001"=> --1
		Result<= Reg4;
					Result(7) <= Reg1(0);
					Result(6) <= Reg1(1);
					Result(5) <= Reg1(2);
					Result(4) <= Reg1(3);
					Result(3) <= Reg1(4);
					Result(2) <= Reg1(5);
					Result(1) <= Reg1(6);
					Result(0) <= Reg1(7);
			Neg<='0';
		When "0000000000000010"=> --2
			Result <= Reg1 OR Reg2;
			Neg<='0';
		When "0000000000000100"=> --3
			if(5>Reg2) Then
			Result <= 5 - Reg2;
					Neg<='1';
				else 
			Result <= Reg2 - 5 ;
						Neg<='0';
					end if;
		When "0000000000001000"=> --4
			Result <= NOT Reg1;
			Neg<='0';
		When "0000000000010000"=> --5
		Result<= Reg4;
					Result(7) <= Reg1(0);
					Result(6) <= Reg1(1);
					Result(5) <= Reg1(2);
					Result(4) <= Reg1(3);
					Result(3) <= Reg1(4);
					Result(2) <= Reg1(5);
					Result(1) <= Reg1(6);
					Result(0) <= Reg1(7);
			Neg<='0';
		When "0000000000100000"=> --6
			if(Reg2>Reg1) Then
			Result <= Reg2;
				else 
			Result <= Reg1 ;
					end if;
			Neg<='0';
		When "0000000001000000"=> --7
			if(Reg2>Reg1) Then
			Result <= Reg2 - Reg1;
					Neg<='1';
				else 
			Result <= Reg1 - Reg2 ;
						Neg<='0';
					end if;
		When "0000000010000000"=> --8
			Result <= Reg1 XNOR Reg2;
			Neg<='0';
		When "0000000100000000"=> --9
		Result<= Reg4;
					Result(7) <= Reg2(4);
					Result(6) <= Reg2(3);
					Result(5) <= Reg2(2);
					Result(4) <= Reg2(1);
					Result(3) <= Reg2(0);
					Result(2) <= Reg2(7);
					Result(1) <= Reg2(6);
					Result(0) <= Reg2(5);	
			Neg<='0';
		When Others =>
		
	end case;
end if;
end process;
R1 <= Result(3 downto 0);
R2 <= Result(7 downto 4);
end calculation;