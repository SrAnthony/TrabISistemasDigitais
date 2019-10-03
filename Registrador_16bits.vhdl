LIBRARY IEEE;
use IEEE.std_logic_1164.all;

ENTITY registrador IS
  PORT(entrada: in std_logic_vector(15 DOWNTO 0);
  	   load: in std_logic;
  	   clk: in std_logic;
  	   reset: in std_logic;
  	   saida: out std_logic_vector(15 DOWNTO 0)
  );
END ENTITY registrador;

architecture arch of registrador is
	begin
		process (reset, load, clk) is
			begin
			
			-- Zera se reset for 1
			if(reset = '1') then
				saida <= "0000000000000000";
			
			-- Saída recebe entrada se clock estiver no evento de descida
			elsif(clk'event and clk = '0') then
				saida <= entrada;
			end if;
		end process;
		
end arch;	

