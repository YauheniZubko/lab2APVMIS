library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity test1x4 is
port (
-- ??????? ?????
 clk : in std_logic_vector(3 downto 0);
    set : in std_logic_vector(3 downto 0);
    rst : in std_logic_vector(3 downto 0);
    Y0 :out std_logic_vector(3 downto 0)
);
end test1x4;
architecture test1x4_rtl of test1x4 is
-- ????????? ?????????
component test1
port (
clk : in std_logic;
set : in std_logic;
rst : in std_logic;
Y0 : out std_logic
);
end component;
begin

test1x1 : test1 port map (clk(0), set(0), rst(0),Y0(0));
test1x2 : test1 port map (clk(1), set(1), rst(1),Y0(1));
test1x3 : test1 port map (clk(2), set(2), rst(2),Y0(2));
test1x4 : test1 port map (clk(3), set(3), rst(3),Y0(3));
end;