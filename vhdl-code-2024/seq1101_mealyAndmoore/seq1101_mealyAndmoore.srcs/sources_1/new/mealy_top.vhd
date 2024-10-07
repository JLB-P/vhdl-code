----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/10/2024 04:52:14 PM
-- Design Name: 
-- Module Name: mealy_top - Behavioral
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

entity mealy_top is
    Port ( INPUT : in STD_LOGIC; --_VECTOR (4 downto 0);--Cambiamos STD_LOGIC A STD_LOGIC_VECTOR
           MCLK : in STD_LOGIC;
           CLR : in STD_LOGIC;
           CLK_1HZ : out STD_LOGIC;
           OUTPUT : out STD_LOGIC);
           
end mealy_top;

architecture Behavioral of mealy_top is
signal signal_input: std_logic_vector(4 downto 0);
signal signal_clr : std_logic;
signal signal_clock : std_logic;

begin

    Debounce: entity work.debounce port map(
    input => signal_input, 
    clr => signal_clr,
    mclk => MCLK 
    );
  		
    CLK_div: entity work.clk_div port map(
    mclk => MCLK,
    clr => signal_clr,
    clk_1hz => signal_clock
    ); 
    
    FSM: entity work.mealy port map(
    input => INPUT,
    reset => signal_clr,
    clk => signal_clock
    );
    
    
    

end Behavioral;
