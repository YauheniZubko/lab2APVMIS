library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.Numeric_Std.all;

entity jksim is
end;

architecture Behavioral of jksim is

component jk_trigger
Port (
  notR : in STD_LOGIC; 
   notS : in STD_LOGIC;
   clk : in STD_LOGIC;
   j: in std_LOGIC;
   k: in std_LOGIC;
   Y0 : out STD_LOGIC;
   notY0:out STD_LOGIC
 );
end component;

  signal notS: std_logic:='1';
signal   notR: std_logic:='0';
signal   clk: std_logic:='0';
signal   j: std_logic:='0';
signal   k: std_logic:='0';
signal   Y0: std_logic;
signal   notY0: std_logic;
begin

uut: jk_trigger port map (
notS=>notS,
notR=>notR,
clk=>clk,
j=>j,
k=>k,
Y0=>Y0,
notY0=>notY0
--Pa=>Pa,
--Pb=>Pb,
--Pc=>Pc,
--Pd=>Pd,
--Pe=>Pe,
--Pf=>Pf,
--Pg=>Pg,
--Ph=>Ph,
--Sa=>Sa,
--Sb=>Sb,
--Sc=>Sc,
--Sd=>Sd,
--Se=>Se,
--Sf=>Sf,
--Sg=>Sg
);
clk<=not clk after 2 ns;
j<=not j after 32 ns;
k<=not k after 64 ns;
notR<= not notR after 256 ns;
notS<= not notS after 512 ns;


end;