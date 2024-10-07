----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/28/2023 02:11:10 PM
-- Design Name: 
-- Module Name: clk_div - Behavioral
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
use ieee.std_logic_arith.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clk_div is
port
(   clk : in std_logic ;
    reset : in std_logic ;
    div : out std_logic
); 
end clk_div;

architecture Behavioral of clk_div is
signal d, q : std_logic_vector (1 downto 0);
-- signal q : std_logic_vector (1 downto 0);
signal fb : std_logic;

begin
process (clk, reset)
begin
if (reset = '0') then
q(0) <= '0';
elsif (clk'event and clk = '1') then
q(0) <= d(0);
end if;
end process;

process (clk, reset)
begin
if (reset = '0') then
q(1) <= '0';
elsif (clk'event and clk = '0') then
q(1) <= d(1);
end if;
end process;

fb <= NOT(q(0) OR q(1));
d(0)<= fb;
d(1)<= fb;
div <= fb;
end Behavioral;
