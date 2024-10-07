----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/03/2024 04:08:57 PM
-- Design Name: 
-- Module Name: mealy_tb - Behavioral
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

entity mealy_tb is
end mealy_tb;

architecture Behavioral of mealy_tb is
component mealy is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           input : in STD_LOGIC;
           output : out STD_LOGIC);
end component;
signal clk: std_logic:='0';
signal clear: std_logic:='1';
signal input: std_logic:='1';
signal output: std_logic;

begin
uut: entity work.mealy port map(clk,clear,input,output);
stimulus: process begin
        wait for 10ns;
        clk<='1';
        clear<='0';
        input<='1';
        wait for 10ns;
        clk<='0';
        input<='1';
        wait for 10ns;
        clk<='1';
        input<='1';
        wait for 10ns;
        clk<='0';
        input<='0';
        wait for 10ns;
        clk<='1';
        input<='1';
        wait for 10ns;
        clk<='0';
        input<='1';
        wait for 10ns;
        clk<='1';
        input<='1';
        wait for 10ns;
        clk<='0';
        input<='1';
        wait for 10ns;
        clk<='1';
        input<='0';
        wait for 10ns;
        clk<='0';
        input<='0';
        wait for 10ns;
        clk<='1';
        input<='0';
    end process stimulus;
end Behavioral;
