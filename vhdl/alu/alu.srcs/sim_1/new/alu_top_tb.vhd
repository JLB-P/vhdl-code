----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/17/2024 09:48:28 AM
-- Design Name: 
-- Module Name: alu_top_tb - Behavioral
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

entity alu_top_tb is
end alu_top_tb;

architecture Behavioral of alu_top_tb is
signal a,b : std_logic_vector(3 downto 0); --input simulation
signal greater,less,equal : std_logic;   --output tto simulate
begin
--unit under test
uut:
entity work.comp_4bit port map (
a=>A,
b=>B,
greater=>greater,
less=>less,
equal=>equal
);

--process definition for simulation
stimulus:
    process
        begin
        a <= "0000";
        b <= "0101";
        wait for 10 ns;
        a <= "1111";
        b <= "0001";
        wait for 10 ns;
        a <= "0001";
        b <= "0001";
        wait for 10 ns;
    end process;
end Behavioral;