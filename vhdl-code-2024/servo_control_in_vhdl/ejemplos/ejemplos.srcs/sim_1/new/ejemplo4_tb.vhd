----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/20/2024 04:24:53 PM
-- Design Name: 
-- Module Name: ejemplo4_tb - Behavioral
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

entity ejemplo4_tb is
--  Port ( );
end ejemplo4_tb;

architecture Behavioral of ejemplo4_tb is
    signal x,y: std_logic_vector(3 downto 0);
    signal x_mayor,x_menor,igual: std_logic;    
begin
    uut: entity work.ejemplo4 port map(x,y,x_mayor,x_menor,igual);
--process definition for simulation.
stimulus: process
        begin
            x <= "0000";
            y <= "0101";
            wait for 10 ns;
            x <= "1111";
            y <= "0001";
            wait for 10 ns;
            x <= "0001";
            y <= "0001";
            wait for 10 ns;
        end process;
end Behavioral;
