LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

PACKAGE me_package IS
	CONSTANT ADDER_WIDTH : integer := 16;
	CONSTANT RESULT_WIDTH : integer := 16;

	SUBTYPE ADDER_VALUE IS integer RANGE 0 TO 2 ** ADDER_WIDTH - 1;
	SUBTYPE RESULT_VALUE IS integer RANGE 0 TO 2 ** RESULT_WIDTH - 1;
END me_package;

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.me_package.ALL;

ENTITY addsub16bits IS
	PORT
	(
		a: 		IN ADDER_VALUE;
		b: 		IN ADDER_VALUE;
		addnsub: 		IN STD_LOGIC;
		result: 		OUT RESULT_VALUE
	);
END addsub16bits;

ARCHITECTURE rtl OF addsub16bits IS
BEGIN
	PROCESS (a, b, addnsub)
	BEGIN
		IF (addnsub = '1') THEN
			result <= a + b;
		ELSE
			result <= a - b;
		END IF;
	END PROCESS;
END rtl;
