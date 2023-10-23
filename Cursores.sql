set serveroutput on;

-- Manejo de Cursores Explicitos

-- Tablespaces
select * from dba_tablespaces;
-- Eliminar el Tablespace TBS_Cursores
drop tablespace "TBS_Cursores" including contents and datafiles;
-- Crear TB_Cursores
create tablespace "TBS_Cursores"
datafile 'D:\Temp\DF_Cursores.dbf'
size 10M;
-- Crear tabla Empleados
DROP TABLE Empleados;
CREATE TABLE Empleados(
 Codigo NUMBER(8) PRIMARY KEY,
 Nombre VARCHAR2(15), 
 Dep NUMBER(3), 
 Sueldo NUMBER(8) NOT NULL
) Tablespace "TBS_Cursores";
-- Insertar datos
INSERT INTO Empleados VALUES(12, 'Paddy', 1,100);
INSERT INTO Empleados VALUES(15, 'Adam', 2, 300);
INSERT INTO Empleados VALUES(76, 'James', 2, 400);
INSERT INTO Empleados VALUES(73, 'Ben', 5, 500);
INSERT INTO Empleados VALUES(56, 'Lisa', 3, 100);
-- Mostrar empleados
select * from Empleados;

-- Declaracion de Cursores01
create or replace procedure prCursor01
is
  cursor c_Cursor01 is select * from Empleados;
  r Empleados%rowtype;
begin
 open c_Cursor01;
 fetch c_Cursor01 INTO r; 
 DBMS_OUTPUT.PUT_LINE('Codigo ' || r.Codigo);
 DBMS_OUTPUT.PUT_LINE('Nombre ' || r.Nombre);
 DBMS_OUTPUT.PUT_LINE('Dep ' || r.Dep);
 DBMS_OUTPUT.PUT_LINE('Sueldo ' || r.Sueldo); 
 close c_Cursor01;
end;

execute prCursor01;

-- Cursor 2 con recorrido de datos
create or replace procedure prCursor02
is
  cursor c_Cursor02 is select * from Empleados;
  r Empleados%rowtype;
begin
  open c_Cursor02;
  loop
    fetch c_Cursor02 INTO r;
    exit when c_Cursor02%notfound;
    DBMS_OUTPUT.PUT_LINE('Codigo ' || r.Codigo);
    DBMS_OUTPUT.PUT_LINE('Nombre ' || r.Nombre);
    DBMS_OUTPUT.PUT_LINE('Dep ' || r.Dep);
    DBMS_OUTPUT.PUT_LINE('Sueldo ' || r.Sueldo);
  end loop;
  close c_Cursor02;
end;

execute prCursor02;
