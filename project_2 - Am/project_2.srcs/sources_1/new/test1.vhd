library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity test1 is
port (
-- ??????? ?????
clk : in std_logic;
set : in std_logic;
rst : in std_logic;
Y0 : out std_logic
);
end test1;
architecture test1_rtl of test1 is
signal FF : STD_LOGIC:='0';
signal chg : STD_LOGIC:='0';
begin
-- ?????-?? ????????

process(clk,set,rst)
		begin
			if (clk'event and clk = '0') THEN
				chg <= '1';
			end if;
			if (chg = '1') then

				if set = '1' and rst = '0' then
					FF <= '1';
				elsif set = '0' and rst = '1' then
                    FF <= '0';
				elsif set = '0' and rst = '0' then
					FF <= FF;
				end if;
				
				chg <= '0' ;
			end if;     
		end process;
		
		
		Y0 <= FF;
end;