LIBRARY ieee;
USE ieee.std_logic_1164.all;

Entity Decoder3to8 IS
  PORT(select : INSTD_LOGIC_VECTOR(1 downto 0);
       enable : INSTD_LOGIC;
       output : OUTSTD_LOGIC_VECTOR(3 downto 0));
END Decoder2to4;

Architecture function OF Decoder3to8 IS
Begin
  Process(select, enable)
  Begin
    IF (enable = "1") THEN
      CASE (select) IS 
        WHEN "000" => output <= "00000001";
        WHEN "001" => output <= "00000010";
        WHEN "010" => output <= "00000100";
        WHEN "011" => output <= "00001000";
        WHEN "100" => output <= "00010000";
        WHEN "101" => output <= "00100000";
        WHEN "110" => output <= "01000000";
        WHEN "111" => output <= "10000000";
        WHEN OTHERS => output <= "00000000";
      END CASE;
    ELSE output <= "00000000";
    END IF;
  END Process;
END function;
