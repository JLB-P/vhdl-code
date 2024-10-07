----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/07/2022 05:09:04 PM
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clk_div is
  Port (mclk, clr: in std_logic;
  		clk_1hz: out std_logic );
end clk_div;

architecture Behavioral of clk_div is
signal q: std_logic_vector(25 downto 0);
begin
	f_div:process (mclk, clr)
	begin
		if (clr = '1') then
			q <= (others => '0');
		elsif (rising_edge(mclk)) then
			q <= q+1;
		end if;
	end process f_div;
	clk_1hz <= q(25);		--1.4 hz	
end Behavioral;
