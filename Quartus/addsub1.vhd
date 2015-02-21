LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

PACKAGE a_package IS
	CONSTANT ADDER_WIDTH : integer := 16;
	CONSTANT RESULT_WIDTH : integer := 16;

	SUBTYPE ADDER_VALUE IS integer RANGE 0 TO 2 ** ADDER_WIDTH - 1;
	SUBTYPE RESULT_VALUE IS integer RANGE 0 TO 2 ** RESULT_WIDTH - 1;
END a_package;

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.a_package.ALL;

ENTITY addsub1 IS
	PORT
	(
		a: 		IN ADDER_VALUE;
		addnsub: 		IN STD_LOGIC;
		result: 		OUT RESULT_VALUE
	);
END addsub1;

ARCHITECTURE rtl OF addsub1 IS
BEGIN
	PROCESS (a, addnsub)
	BEGIN
		IF (addnsub = '1') THEN
			result <= a + 1;
		ELSE
			result <= a - 1;
		END IF;
	END PROCESS;
END rtl;
