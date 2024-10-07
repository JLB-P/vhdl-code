----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/19/2024 10:29:48 AM
-- Design Name: 
-- Module Name: bin_to_letter - Behavioral
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

entity bin_to_letter is
    Port ( in_bin : in STD_LOGIC_VECTOR (3 downto 0);
           out_7seg : out STD_LOGIC_VECTOR (6 downto 0));
end bin_to_letter;

architecture Behavioral of bin_to_letter is

begin
--HEX-to-seven-segment decoder
--   HEX:   in    STD_LOGIC_VECTOR (3 downto 0);
--   LED:   out   STD_LOGIC_VECTOR (6 downto 0);
--
-- segment encoinputg
--      0
--     ---
--  5 |   | 1
--     ---   <- 6
--  4 |   | 2
--     ---
--      3

  with in_bin select
   out_7seg<= "0000010" when "0001",   --G
             "0000110" when "0010",   --E
             "1000111" when "0100",   --L
             "1111111" when others;   --0
end Behavioral;
