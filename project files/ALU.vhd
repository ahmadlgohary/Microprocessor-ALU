library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
ENTITY ALU IS 
port (Clock: in std_logic;
		A,B : in unsigned(7 downto 0);
		student_id : unsigned(3 downto 0);
		OP: in unsigned(15 downto 0);
		Neg: out std_logic;
		R1: out unsigned (3 downto 0);
		R2: out unsigned (3 downto 0);
		equals: out unsigned (3 downto 0));
		end ALU;
ARCHITECTURE calculation of ALU IS
	signal Reg1, Reg2, Result: unsigned (7 downto 0):= (others=>'0');
	signal Reg4 : unsigned (0 to 7);
	begin
	Reg1 <= A;
	Reg2 <= B;
	process(Clock,OP)
	begin
		if(rising_edge (Clock)) Then
		case OP is 
		When "0000000000000001"=>
			Result <= Reg1 + Reg2;
		When "0000000000000010"=>
		if(Reg2>Reg1) Then
			Result <= Reg2 - Reg1;
					Neg<='1';
				else 
			Result <= Reg1 - Reg2 ;
						Neg<='0';
					end if;
		When "0000000000000100"=>
			Result <= NOT Reg1;
			Neg<='0';
		When "0000000000001000"=>
			Result <= Reg1 NAND Reg2;
			Neg<='0';
		When "0000000000010000"=>
			Result <= Reg1 NOR Reg2;
			Neg<='0';
		When "0000000000100000"=>
			Result <= Reg1 AND Reg2;
			Neg<='0';
		When "0000000001000000"=>
			Result <= Reg1 OR Reg2;
			Neg<='0';
		When "0000000010000000"=>
			Result <= Reg1 XOR Reg2;
			Neg<='0';
		When "0000000100000000"=>
			Result <= Reg1 XNOR Reg2;
			Neg<='0';
		When Others =>
		
	end case;
end if;
if(
student_id(0)= Reg2(0) AND
student_id(1)= Reg2(1) AND
student_id(2)= Reg2(2) AND
student_id(3)= Reg2(3))
then
equals<="1111";
elsif(
student_id(0)= Reg2(4) AND
student_id(1)= Reg2(5) AND
student_id(2)= Reg2(6) AND
student_id(3)= Reg2(7))
then 
equals<="1111";
else
equals<= "0000";
end if;
end process;
R1 <= Result(3 downto 0);
R2 <= Result(7 downto 4);
end calculation;