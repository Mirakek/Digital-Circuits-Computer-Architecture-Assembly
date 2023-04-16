LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
ENTITY BrandonVo IS
PORT ( A, B, C, D : IN bit ;
y1, y2 : OUT bit ) ;
END BrandonVo ;
ARCHITECTURE LogicFunction OF BrandonVo IS
signal m1, m2, m3, m4, m5, m6 : bit;
BEGIN
m1 <= ( C NAND D ) ;
m2 <= ( A NOR B ) ;
m3 <= ( C NOR D ) ;
m4 <= ( A NAND B ) ;
m5 <= ( A XOR D ) ;
m6 <= ( B XOR C ) ;
y1 <= ((m1 AND m2) OR (m2 AND m3)) ;
y2 <= ((m3 AND m4) OR (m5 AND m6)) ;
END LogicFunction ;
