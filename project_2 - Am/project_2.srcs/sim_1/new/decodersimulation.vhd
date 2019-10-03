library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.Numeric_Std.all;

entity decoderSimulation is
end;

architecture Behavioral of decoderSimulation is

component decoder
Port (
clk: in STD_LOGIC;
set: in STD_LOGIC;
rst: in STD_LOGIC;
Y0: out STD_LOGIC;
Y1: out STD_LOGIC;
Y2: out STD_LOGIC;
Y3: out STD_LOGIC);
end component;

signal clk: STD_LOGIC:= '0';
signal set: STD_LOGIC:= '0';
signal rst: STD_LOGIC:= '0';
signal Y0: STD_LOGIC;
signal Y1: STD_LOGIC;
signal Y2: STD_LOGIC;
signal Y3: STD_LOGIC;
begin

uut: decoder port map (
clk => clk,
set => set,
rst => rst,
Y0 => Y0,
Y1 => Y1,
Y2 => Y2,
Y3 => Y3);

clk <= not clk after 8ns;
set <= not set after 32ns;
rst <= not rst after 16ns;


end;