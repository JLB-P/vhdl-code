----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/19/2024 05:05:06 PM
-- Design Name: 
-- Module Name: ejemplo2 - Behavioral
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

entity ejemplo2 is
    Port ( D0,D1,D2,D3 : in STD_LOGIC;
           SEL : in STD_LOGIC_vector(1 downto 0);
           mux_out : out STD_LOGIC);
end ejemplo2;

architecture Behavioral of ejemplo2 is

begin
    mux_out <= D0 when sel = "00" else
                D1 when sel = "01" else
                D2 when sel = "10" else
                D3 when sel = "11" else
                '0';
end Behavioral;
