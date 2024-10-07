Library IEEE;

use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity div_100to65 is 

    port(   clk100mhz : in std_logic;
           -- p_7seg, s_7seg : in std_logic_vector (6 downto 0);
            --display : out std_logic_vector (6 downto 0);
            clk65mhz : out std_logic);
            
end div_100to65;

architecture Behavioral of div_100to65 is
    
    constant max_count : integer := 1; 
	signal count: integer range 0 to max_count;
	signal clk_state: STD_LOGIC := '0';
	
	signal d,q : std_logic_vector(1 downto 0);
	signal fb: std_logic;
	
	
begin

	gen_clock: process(clk100mhz, count)
	
	
        begin
	
		if ((rising_edge(clk100mhz) or falling_edge(clk100mhz) )and clk_state ='0') then
	
	        if count < max_count then 
	
				count <= count+1;
			
			else
				clk_state<= '1';
				
				count <= 0;
	
			end if;
		
		elsif ((rising_edge(clk100mhz) or falling_edge(clk100mhz) )and clk_state ='1') then
				
				clk_state <= '0';
				
		end if;
	
	end process;
	

    
    clk65mhz <= clk_state;
    
end Behavioral;            
