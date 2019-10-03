library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dr_trigger is
port(
     d:in STD_LOGIC;
     clk : in STD_LOGIC;
     rst : in STD_LOGIC;
     Y0 : out STD_LOGIC;
     notY0 : out STD_LOGIC
    );
end dr_trigger;

architecture Behavioral of dr_trigger is
signal FF : STD_LOGIC:='0';
signal notD : STD_LOGIC:='0';
signal notclk: STD_LOGIC:='0';
signal notFF: STD_LOGIC:='1';
component jk_trigger
port (
  notR : in STD_LOGIC; 
   notS : in STD_LOGIC;
   clk : in STD_LOGIC;
   j: in std_LOGIC;
   k: in std_LOGIC;
   Y0 : out STD_LOGIC;
   notY0:out STD_LOGIC
);
end component;
begin
notD<=not d;
notclk<= not clk;
notFF<=not FF;
jk_trigger1 : jk_trigger port map (rst, '1', notclk,d,notD,Y0,notY0);


end Behavioral;
