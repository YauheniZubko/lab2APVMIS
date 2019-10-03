----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/18/2019 11:45:05 PM
-- Design Name: 
-- Module Name: threest - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity threest is
port( 
    en : in STD_LOGIC;
    inp1: in std_logic;
    inp2: in std_logic;
    outp: out std_logic
);
end threest;
architecture Behavioral of threest is
signal FF:STD_LOGIC:='0';
begin
FF<=not(inp1 or inp2);
process(en,FF)
begin
if(en='1') then outp<=FF;
else outp<='Z';
end if;
end process;

end Behavioral;
