----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/19/2024 05:50:08 PM
-- Design Name: 
-- Module Name: ejemplo3 - Behavioral
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

entity ejemplo3 is
    Port ( D0,D1,D2,D3 : in STD_LOGIC;
           SEL : in STD_LOGIC_vector(1 downto 0);
           mux_out : out STD_LOGIC);
end ejemplo3;

architecture Behavioral of ejemplo3 is

begin
    with sel select
    mux_out <= D0 when "00",
                D1 when "01",
                D2 when "10",
                D3 when "11",
                '0' when others;
end Behavioral;
