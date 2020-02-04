Library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;
Entity SubProg is
	Port(
		w:in BIT_VECTOR(7 downto 0);
		y:out integer);
End Entity;

Architecture bhv of SubProg is
	Procedure TrailingZeros(w: in BIT_VECTOR(7 downto 0);
		signal y:out integer)is
		variable num:integer := 0;
		variable done : BIT := '0';
		begin
			for k in 0 to w'high loop
				if done = '0' Then
					if w(k)='0' Then
						num := num + 1;
					else
						done := '1';
					end if;
				end if;
			end loop;
			y <= num;
	End Procedure;
Begin
	
	TrailingZeros(w,y);
	
End;
