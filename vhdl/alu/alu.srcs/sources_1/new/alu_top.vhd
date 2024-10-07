----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/10/2024 10:27:21 AM
-- Design Name: 
-- Module Name: alu_top - Behavioral
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

entity alu_top is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           S : out STD_LOGIC_VECTOR (3 downto 0);
           SEG : out STD_LOGIC_VECTOR (6 downto 0)
    );
end alu_top;

architecture Behavioral of alu_top is
signal yellow_wire_l : std_logic;
signal yellow_wire_g : std_logic;
signal yellow_wire_e : std_logic;
signal yellow_wire_4b : std_logic_vector(3 downto 0);
signal yellow_wire : std_logic;
begin
    yellow_wire_4b <= ('0' &
                     yellow_wire_l & 
                     yellow_wire_e &
                      yellow_wire_g);
    u1: entity work.comp_4bit port map (
    a => A,
    b => B,
    greater => yellow_wire_g,
    less => yellow_wire_l,
    equal => yellow_wire_e);
       
    u2: entity work.full_adder port map(
    a => A,
    b => B,
   ci => '0',
   s  => S,
   co => yellow_wire
    );
   u3: entity work.bin_to_letter port map(
    in_bin => yellow_wire_4b,
    out_7seg => SEG
    );
end Behavioral;
