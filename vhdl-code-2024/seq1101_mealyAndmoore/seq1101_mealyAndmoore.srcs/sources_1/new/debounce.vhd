----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/10/2024 01:58:43 PM
-- Design Name: 
-- Module Name: debounce - Behavioral
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

entity debounce is
    Port ( mclk : in STD_LOGIC;
           clr : in STD_LOGIC;
           input : in std_logic_vector(4 downto 0);
           output : out std_logic_vector(4 downto 0)
           );
end debounce;

architecture Behavioral of debounce is
signal delay1, delay2, delay3 : std_logic_vector(4 downto 0);

begin
    process (mclk,clr)
    begin
        if (clr='1') then
            delay1 <= "00000";
            delay2 <= "00000";
            delay3 <= "00000";
        elsif rising_edge(mclk)then
            delay1 <= input;
            delay2 <= delay1;
            delay3 <= delay2;
        end if;
    end process;
    output <= (delay1 and delay2 and delay3);
end Behavioral;
