library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.Numeric_Std.all;

entity sim is
end;

architecture Behavioral of sim is

component counter
Port (
     notG:in std_logic;
RnotC:in std_logic;
RCK:in std_logic;
notCCLR:in std_logic;
UnotD: in std_logic;
notLOAD:in std_logic;
notENP:in std_logic;
notENT:in std_logic;
CCK:in std_logic;
A:in std_logic;
B:in std_logic;
C:in std_logic;
D:in std_logic;
Qa:out std_logic;
Qb:out std_logic;
Qc:out std_logic;
Qd:out std_logic;
notRco:out std_logic 

 );
end component;

signal notG:std_logic:='0';
signal RnotC:std_logic:='0';
signal RCK:std_logic:='0';
signal notCCLR:std_logic:='0';
signal UnotD: std_logic:='0';
signal notLOAD:std_logic:='0';
signal notENP:std_logic:='0';
signal notENT:std_logic:='0';
signal CCK:std_logic:='0';
signal A:std_logic:='0';
signal B:std_logic:='0';
signal C:std_logic:='0';
signal D:std_logic:='0';
signal Qa:std_logic:='0';
signal Qb:std_logic:='0';
signal Qc:std_logic:='0';
signal Qd:std_logic:='0';
signal notRco:std_logic:='0'; 
begin

uut: counter port map (
notG=>notG,
RnotC=>RnotC,
RCK=>RCK,
notCCLR=>notCCLR,
UnotD=>UnotD,
notLOAD=>notLOAD,
notENP=>notENP,
notENT=>notENT,
CCK=>CCK,
A=>A,
B=>B,
C=>C,
D=>D,
Qa=>Qa,
Qb=>Qb,
Qc=>Qc,
Qd=>Qd,
notRCO=>notRCO
--Pa=>Pa,
--Pb=>Pb,
--Pc=>Pc,
--Pd=>Pd,
--Pe=>Pe,
--Pf=>Pf,
--Pg=>Pg,
--Ph=>Ph
--Sa=>Sa,
--Sb=>Sb,
--Sc=>Sc,
--Sd=>Sd,
--Se=>Se,
--Sf=>Sf,
--Sg=>Sg
);
CCK<=not CCK after 2ns;
RCK<=not CCK;
notCCLR<=not notCCLR after 512ns;
notLOAD<=not notLOAD after 1024ns;
notENP<= not notENP after 16384ns;
notENT<=not notENT after 32768ns;
UnotD<=not UnotD after 2048ns;
RnotC<=not RnotC after 4096 ns;
notG<=not notG after 8192ns;
A<='1';
B<='0';
C<='1';
D<='1';


end;