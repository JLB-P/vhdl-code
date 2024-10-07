----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/20/2024 10:48:31 AM
-- Design Name: 
-- Module Name: servo_control_top - Behavioral
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

entity servo_control_top is
--  Port ( );
end servo_control_top;

architecture Behavioral of servo_control_top is
constant clk_hz : real := 1.0e6;
constant clk_period : time := 1 sec / clk_hz;
constant pulse_hz : real := 50.0;
constant pulse_period : time := 1 sec / pulse_hz;
constant min_pulse_us : real := 1000.0;
constant max_pulse_us : real := 2000.0;
constant step_count : positive := 5;

signal clk : std_logic := '1';
signal rst : std_logic := '1';
signal position : integer range 0 to step_count - 1;
signal pwm : std_logic;

begin
DUT : entity work.servo_control(rtl)
generic map (
  clk_hz => clk_hz,
  pulse_hz => pulse_hz,
  min_pulse_us => min_pulse_us,
  max_pulse_us => max_pulse_us,
  step_count => step_count
)
port map (
  clk => clk,
  rst => rst,
  position => position,
  pwm => pwm
);

SEQUENCER : process
begin
  wait for 10 * clk_period;
  rst <= '0';
  wait for pulse_period;
  for i in 0 to step_count - 1 loop
    position <= i;
    wait for pulse_period;
  end loop;
  --report "Simulation done. Check waveform.";
  --finish;
end process;
end Behavioral;
