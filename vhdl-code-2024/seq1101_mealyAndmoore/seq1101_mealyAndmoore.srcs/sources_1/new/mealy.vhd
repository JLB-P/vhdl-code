----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/03/2024 03:44:14 PM
-- Design Name: 
-- Module Name: mealy - Behavioral
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

entity mealy is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           input : in STD_LOGIC;
           output : out STD_LOGIC);
end mealy;

architecture Behavioral of mealy is
type state_type is (q0,q1,q2,q3);
signal present_state,next_state: state_type;
begin


C1:process (present_state,input) begin
    case present_state is
        when q0 =>
            if(input='1')then
                next_state<=q1;
            else
                next_state<=q0;
            end if;
       when q1 =>
            if(input='1')then
                next_state<=q2;
            else
                next_state<=q0;
            end if;
       when q2 =>
            if(input='0')then
                next_state<=q3;
            else
                next_state<=q2;
            end if;
       when q3 =>
            if(input='1')then
                next_state<=q1;
            else
                next_state<=q0;
            end if;
       when others =>
            null;
    end case;
end process C1;

state_register: process (clk,reset)
begin
    if(reset = '1') then
        present_state<=q0;
    elsif (rising_edge(clk)) then
        present_state<=next_state;
    end if;
end process state_register;

C2: process (clk,reset) begin
    if(reset='1') then
        output<='0';
    elsif (rising_edge(clk)) then
        if(present_state=q3 and input= '1') then
            output<='1';
        else
            output<='0';
       end if;
   end if;
end process C2;
end Behavioral;
