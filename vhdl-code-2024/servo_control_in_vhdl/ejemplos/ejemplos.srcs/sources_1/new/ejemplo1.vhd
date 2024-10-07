----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/19/2024 04:29:44 PM
-- Design Name: 
-- Module Name: ejemplo1 - Behavioral
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

entity ejemplo1 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           X : out STD_LOGIC;
           Y : out STD_LOGIC;
           Z : out STD_LOGIC);
end ejemplo1;

architecture Behavioral of ejemplo1 is
    SIGNAL X0,Y0,Z0 : STD_LOGIC;
begin
    X0 <= NOT(A AND B);
    Y0 <= NOT(B OR C);
    Z0 <= (C AND D);
    X <= (X0 AND Y0) OR (A);
    Y <= (Y0 OR Z0) AND (X0 AND Y0);
    Z <= NOT((Y0 OR Z0) OR (D));

end Behavioral;
