----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/20/2024 04:09:13 PM
-- Design Name: 
-- Module Name: ejemplo4 - Behavioral
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

entity ejemplo4 is
    Port ( x : in STD_LOGIC_VECTOR (3 downto 0);
           y : in STD_LOGIC_VECTOR (3 downto 0);
           x_mayor : out STD_LOGIC;
           x_menor : out STD_LOGIC;
           igual : out STD_LOGIC);
end ejemplo4;

architecture Behavioral of ejemplo4 is
    
begin
    comparador: process (x,y) is
                begin
                    if (x > y)
                        then x_mayor <= '1';
                             x_menor <= '0';
                             igual <= '0';
                    elsif (x < y)
                        then x_mayor <= '0';
                             x_menor <= '1';
                             igual <= '0';
                        else x_mayor <= '0';
                             x_menor <= '0';
                             igual <= '1';
                    end if;
                end process comparador;
end Behavioral;
