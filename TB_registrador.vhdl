library IEEE;
use IEEE.std_logic_1164.all;

entity TB_registrador is
end TB_registrador;

architecture teste of TB_registrador is
  signal TB_entrada: std_logic_vector(15 DOWNTO 0);
  signal TB_load: std_logic;
  signal TB_clk: std_logic;
  signal TB_reset: std_logic;
begin


-- Mapeia entradas
entity work.TB_registrador port map(entrada <= TB_entrada, load <= TB_load, clk <= TB_clk, reset <= TB_reset);

	process
    begin
        
    	TB_reset <= '0';
    	TB_clk <= '0';
      TB_entrada <= "0000000011111111";
      
      
      TB_load <= '1';
      TB_clk <= '1';
      wait for 10 ns;
      
      
      TB_clk <= '0';
      TB_load <= '0';
      wait for 10 ns;
      
      TB_clk <= '1';
      wait for 10 ns;
      
      TB_clk <= '0';
      TB_load <= '1';
      wait for 10 ns;
      
      
      TB_entrada <= "1111111100000000";
      wait for 10 ns;
      
      
      TB_load <= '1';
      TB_clk <= '1';
      wait for 10 ns;
      
      TB_clk <= '0';
      TB_load <= '0';
      wait for 10 ns;
      
      TB_reset <= '1';
      
      
      
      TB_entrada <= "1111111100000000";
      wait ;
        
	end process;
    
end architecture;
        