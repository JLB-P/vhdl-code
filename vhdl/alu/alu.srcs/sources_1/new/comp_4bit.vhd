----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/10/2024 09:38:53 AM
-- Design Name: 
-- Module Name: comp_4bit - Behavioral
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

entity comp_4bit is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           greater,less,equal: out std_logic
           );
end comp_4bit;

architecture Behavioral of comp_4bit is
   
begin
    comparator: process (a,b) is
    begin
        if (a>b)
        then 
        greater <= '1';
        equal <= '0';
        less <= '0';
        elsif (a<b)
            then 
            greater <= '0';
            equal <= '0';
            less <= '1';
         else
         greater <= '0';
         equal <= '1';
         less <= '0';
        end if;
    end process comparator;        
end Behavioral;
