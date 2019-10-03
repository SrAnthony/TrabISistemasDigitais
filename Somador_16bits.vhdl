LIBRARY work;
USE ieee.std_logic_1164.all;

ENTITY somador_16bits IS

port(a, b: in STD_LOGIC_VECTOR(15 DOWNTO 0);
		 cin: in STD_LOGIC;
		 cout: out STD_LOGIC_VECTOR(15 DOWNTO 0);
		 resul: out STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END ENTITY somador_16bits;

ARCHITECTURE arch_somador_16bits OF somador_16bits IS
BEGIN

	process(a, b cin)
    VARIABLE soma: std_logic_vector(15 DOWNTO 0);
    VARIABLE c: STD_LOGIC;
    BEGIN
    	c => cin;
    	for i in 0 to 15 loop 
				soma(i) := a(i) xor b(i) xor c;
				c := (a(i) and c(i)) or ((a(i) xor b(i)) and c);
    	end loop;
    
			cout <= c;
			resul <= somador
    
  end process;
	
END ARCHITECTURE arch_somador_16bits; -- Of entity somador_16bits
