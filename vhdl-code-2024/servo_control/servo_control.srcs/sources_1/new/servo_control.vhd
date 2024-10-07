----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/20/2024 10:18:45 AM
-- Design Name: 
-- Module Name: servo_control - Behavioral
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
use ieee.math_real.round;
use IEEE.NUMERIC_STD.ALL;

entity servo_control is
  generic (
    clk_hz : real := 1.0e6;
    pulse_hz : real := 50.0; -- PWM pulse frequency
    min_pulse_us : real := 1000.0; -- uS pulse width at min position
    max_pulse_us : real := 2000.0;  -- uS pulse width at max position
    step_count : positive := 5     -- Number of steps from min to max
  );

  port (
    clk : in std_logic;
    rst : in std_logic;
    position : in integer range 0 to step_count - 1;
    pwm : out std_logic
  );
end servo_control;

architecture Behavioral of servo_control is
    
    function cycles_per_us (us_count : real) return integer is
    begin
      return integer(round(clk_hz / 1.0e6 * us_count));
    end function;
    
    constant min_count : integer := cycles_per_us(min_pulse_us);
    constant max_count : integer := cycles_per_us(max_pulse_us);
    constant min_max_range_us : real := max_pulse_us - min_pulse_us;
    constant step_us : real := min_max_range_us / real(step_count - 1);
    constant cycles_per_step : positive := cycles_per_us(step_us);
constant clk_period : time := 1 sec / clk_hz;
constant pulse_period : time := 1 sec / pulse_hz;


    constant counter_max : integer := integer(round(clk_hz / pulse_hz)) - 1;
    signal counter : integer range 0 to counter_max;
    signal duty_cycle : integer range 0 to max_count;
    
begin

COUNTER_PROC : process(clk)
begin
  if rising_edge(clk) then
    if rst = '1' then
      counter <= 0;
    else
      if counter < counter_max then
        counter <= counter + 1;
      else
        counter <= 0;
      end if;
    end if;
  end if;
end process;

PWM_PROC : process(clk)
begin
  if rising_edge(clk) then
    if rst = '1' then
      pwm <= '0';
    else
      pwm <= '0';
      if counter < duty_cycle then
        pwm <= '1';
      end if;
    end if;
  end if;
end process;

DUTY_CYCLE_PROC : process(clk)
begin
  if rising_edge(clk) then
    if rst = '1' then
      duty_cycle <= min_count;  
    else
      duty_cycle <= position * cycles_per_step + min_count;
    end if;
  end if;
end process;

end Behavioral;
