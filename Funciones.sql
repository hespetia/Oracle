-- loop
CREATE OR REPLACE FUNCTION fnfactorial01(n NUMBER) RETURN NUMBER 
IS 
  f NUMBER := 1;
  cont NUMBER := n;
BEGIN
  LOOP
    f := f *cont;
    cont := cont -1;
    EXIT
  WHEN(cont = 0);
  END LOOP;
  RETURN f;
END;

SELECT fnfactorial01(6)FROM dual;

-- while
CREATE OR REPLACE FUNCTION fnfactorial02(n NUMBER) RETURN NUMBER 
IS 
  f NUMBER := 1;
  cont NUMBER := 1;
BEGIN
  WHILE(cont <= n)
  LOOP
    f := f *cont;
    cont := cont + 1;
  END LOOP;
  RETURN f;
END;

SELECT fnfactorial02(3) FROM dual;

-- for
CREATE OR REPLACE FUNCTION fnfactorial03(n NUMBER) RETURN NUMBER 
IS 
  f NUMBER := 1;
BEGIN
  FOR k IN 1 .. n LOOP
    f := f *k;
  END LOOP;
  RETURN f;
END;

SELECT fnfactorial03(8) FROM dual;

