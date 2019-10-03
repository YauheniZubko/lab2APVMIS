library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.Numeric_Std.all;

entity drsim is
end;

architecture Behavioral of drsim is

component dr_trigger
Port (
     d:in STD_LOGIC;
clk : in STD_LOGIC;
rst : in STD_LOGIC;
Y0 : out STD_LOGIC;
notY0 : out STD_LOGIC
 );
end component;

  signal d: std_logic:='1';
signal   clk: std_logic:='0';
signal   rst: std_logic:='0';

signal   Y0: std_logic;
signal   notY0: std_logic;
begin

uut: dr_trigger port map (
notY0=>notY0,
rst=>rst,
clk=>clk,
d=>d,
Y0=>Y0
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
d<=not d after 16 ns;
rst<=not rst after 128 ns;


end;