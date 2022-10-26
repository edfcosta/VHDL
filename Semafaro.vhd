-- Dupla: John Peter da Silva Pinto-20101874 e Eduardo de Figueiredo Costa-20102202 
-- Trabalho prático 2
-- Descrição de hardware de um semáfaro desenvolvido em VHDL 
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

entity semafaro is 
	port(
		a,b,c,d	: in std_logic;
		NS, LO	: out std_logic
		);
end semafaro;

architecture arq_controle_de_cruzamento of semafaro is
signal v: std_logic_vector (3 downto 0);
signal SNS, SLO: std_logic;
begin
	v(0) <= a and b;
	v(1) <= not c or not d;
	v(2) <= not c and not d;
	v(3) <= b or a;
	SNS <= (v(0) and v(1)) or (v(2) and v(3));
	SLO <= not(SNS);
	NS <= SNS;
	LO <= SLO;
end arq_controle_de_cruzamento;
-------------------------------------------------------------------------------------
