----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/12/2024 04:43:00 PM
-- Design Name: 
-- Module Name: sumador_tb - Behavioral
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

entity sumador_tb is
--  Port ( );
end sumador_tb;

architecture Behavioral of sumador_tb is
    signal a,b : STD_LOGIC_VECTOR (3 downto 0); --inputs
    signal s : STD_LOGIC_VECTOR (3 downto 0); --outputs
    signal c: std_logic;
begin
uut: entity work.sumador port map(a=>a,b=>b,s=>s,c=>c);
stimulus:
process
begin
    a <= "0101";
    b <= "0101";
    wait for 10 ns;
    a <= "1001";
    b <= "1000";
    wait for 10 ns;
    a <= "0011";
    b <= "0101";
    wait for 10 ns;
end process;
end Behavioral;
