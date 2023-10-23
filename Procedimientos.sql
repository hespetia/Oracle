-- activar salida de datos
set serveroutput on;

create or replace procedure spSuma(a number, b number) 
is 
  c number;
begin
  c := a + b;
  dbms_output.put_line(c);
end;

execute spSuma(3,5);

create or replace procedure spAgregarCarrera(
  vCodCarrera TCarrera.CodCarrera%type,
  vCarrera TCarrera.Carrera%type)
as
begin
  insert into TCarrera(CodCarrera, Carrera) 
  values (vCodCarrera, vCarrera);
  dbms_output.put_line('Carrera ingresada correctamente');
end;

select * from TCarrera;

execute spAgregarCarrera('C0013','Farmacia');

create or replace procedure spListarAlumno
is
  CURSOR cAlumnos 
  IS
  SELECT CodAlumno,APaterno, AMaterno,Nombres,CodCarrera 
  FROM TAlumno;
  vCodAlumno CHAR(5);
  vAPaterno VARCHAR2(50);
  vAMaterno  VARCHAR2(50);
  vNombres varchar2(50);
  vCodCarrera char(5);
BEGIN
  open cAlumnos;
  loop
    fetch cAlumnos INTO vCodAlumno,vAPaterno,vAMaterno,vNombres,vCodCarrera;
    exit when cAlumnos%notfound;
    DBMS_OUTPUT.PUT_LINE('CodAlumno ' || vCodAlumno);
    DBMS_OUTPUT.PUT_LINE('APaterno ' || vAPaterno);
    DBMS_OUTPUT.PUT_LINE('AMaterno ' || vAmaterno);
    DBMS_OUTPUT.PUT_LINE('Nombres ' || vNombres);
  end loop;
  close cAlumnos;
end;

execute spListarAlumno;
