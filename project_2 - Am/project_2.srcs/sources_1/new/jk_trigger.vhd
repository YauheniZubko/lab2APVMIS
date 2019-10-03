library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity jk_trigger is
port(
     notR : in STD_LOGIC; 
     notS : in STD_LOGIC;
     clk : in STD_LOGIC;
     j: in std_LOGIC;
     k: in std_LOGIC;
     Y0 : out STD_LOGIC;
     notY0:out STD_LOGIC
    );
end jk_trigger;

architecture Behavioral of jk_trigger is
signal FF : STD_LOGIC:='0';
begin
process(notR,clk,notS)
		begin
		    if(notR='0') then FF<='0';
		    else if(notS='0') then FF<='1';
		    else if(clk'event and clk = '1') then 
		    if(j='0' and k='0') then FF<=FF;
		    else if(j='0' and k='1') then FF<='0';
		    else if(j='1' and k='0') then FF<='1';
		    else if(j='1' and k='1') then FF<= not FF;
		    end if;end if;end if; end if;end if;end if;end if; 
		end process;		
		Y0 <= FF;
		notY0<=not FF;
end Behavioral;
