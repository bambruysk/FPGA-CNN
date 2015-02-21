LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

PACKAGE b_package IS
	CONSTANT ADDER_WIDTH : integer := 16;
	CONSTANT RESULT_WIDTH : integer := 16;

	SUBTYPE ADDER_VALUE IS integer RANGE 0 TO 2 ** ADDER_WIDTH - 1;
	SUBTYPE RESULT_VALUE IS integer RANGE 0 TO 2 ** RESULT_WIDTH - 1;
END b_package;

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.b_package.ALL;

ENTITY adder3 IS
	PORT
	(
		a: 		IN ADDER_VALUE;
		b: 		IN ADDER_VALUE;
		c: 		IN ADDER_VALUE;
		
		result: 		OUT RESULT_VALUE
	);
END adder3;

ARCHITECTURE rtl OF adder3 IS
BEGIN

	result <= a + b + c ;

END rtl;
