----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/03/2024 09:32:48 AM
-- Design Name: 
-- Module Name: fsm_mealy - Behavioral
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

entity fsm_mealy is
    Port ( x : in STD_LOGIC;
           clk : in STD_LOGIC;
           clr : in STD_LOGIC;
           z : out STD_LOGIC);
end fsm_mealy;

architecture Behavioral of fsm_mealy is
type state_type is (s0,s1,s2,s3);
signal present_state,next_state: state_type;
begin

state_register: process (clk,clr) begin
    if(clr = '1') then
        present_state<=s0;
    elsif (rising_edge(clk)) then
        present_state<=next_state;
    end if;
end process state_register;

C1:process (present_state,x) begin
    case present_state is
        when s0 =>
            if(x='1')then
                next_state<=s0;
            else
                next_state<=s1;
            end if;
       when s1 =>
            if(x='1')then
                next_state<=s2;
            else
                next_state<=s1;
            end if;
       when s2 =>
            if(x='0')then
                next_state<=s1;
            else
                next_state<=s3;
            end if;
       when s3 =>
            if(x='1')then
                next_state<=s0;
            else
                next_state<=s1;
            end if;
       when others =>
            null;
    end case;
end process C1;

seq2: process (clk,clr) begin
    if(clr='1') then
        z<='0';
    elsif (rising_edge(clk)) then
        if(present_state=s3 and x= '0') then
            z<='1';
        else
            z<='0';
       end if;
   end if;
end process seq2;
end Behavioral;
