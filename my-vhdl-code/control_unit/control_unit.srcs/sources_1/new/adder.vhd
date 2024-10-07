----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/14/2022 12:42:02 PM
-- Design Name: 
-- Module Name: adder - Behavioral
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

entity adder is
    generic(n_bits : integer := 8);
  Port (cin : in std_logic;
        input_a : in std_logic_vector( (n_bits - 1) downto 0);
        input_b : in std_logic_vector( (n_bits - 1) downto 0);
        output_r : out std_logic_vector(n_bits downto 0);
  );
end adder;
    
architecture Behavioral of adder is
    signal carry  : std_logic_vector(n_bits downto 0);
    signal result : std_logic_vector((n_bits - 1) downto 0);
begin
    carry(0) <= cin; 
    for i in 0 to (n_bits - 1) generate
    begin
        result(i) <= input_a(i) xor inputs2(I) xor carry(I);
        carry(I+1) <= 
            (inputs1(I) and inputs2(I)) or 
            (inputs1(I) and carry(I))   or
            (inputs2(I) and carry(I));
    end generate;

    outputs <= carry(numberOfInputs) & result;
end Behavioral;
