----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/28/2023 02:18:11 PM
-- Design Name: 
-- Module Name: clk_div_tb - Behavioral
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

entity clk_div_tb is
--  Port ( );
end clk_div_tb;

architecture Behavioral of clk_div_tb is
component clk_div is
port
(   clk : in std_logic ;
    reset : in std_logic ;
    div : out std_logic ); 
end component;
--inputs
signal clk: std_logic:='0';
signal reset: std_logic:='1';
--output
signal div: std_logic;
-- Clock period definitions
constant clk_period : time := 20 ns;

begin
uut: clk_div port map(clk,reset,div);
-- Clock process definitions
clk_process :process
begin
clk <= '0';
wait for clk_period/2;
clk <= '1';
wait for clk_period/2;
end process;

-- Stimulus process
stimulus: process begin 
        wait for 10ns;
        reset <= '1';
        wait for 10ns;
        reset <= '0';
        wait;
    end process stimulus;
    
end Behavioral;
