CREATE TABLE TAlumno
(CodAlumno char(5) not null,
APaterno varchar2(50) not null,
AMaterno varchar2(50) not null,
Nombres varchar2(50) not null,
CodCarrera char(5));

ALTER TABLE TCarrera
ADD CONSTRAINTS PK_Carrera
PRIMARY KEY(CodCarrera);

ALTER TABLE TAlumno
ADD CONSTRAINTS PK_Alumno
PRIMARY KEY(CodAlumno);

ALTER TABLE TAlumno
ADD CONSTRAINT FK_Alumno_Curso
FOREIGN KEY(CodCarrera)
REFERENCES TCarrera;

-- Cabecera de Paquete
create or replace package Carrera as
  procedure spAgregarCarrera(vCodCarrera TCarrera.CodCarrera%type,
  vCarrera TCarrera.Carrera%type);  
  procedure spListarCarrera;
end;

-- Cuerpo de Paquete
create or replace package body Carrera as
  
  procedure spAgregarCarrera(vCodCarrera TCarrera.CodCarrera%type,
  vCarrera TCarrera.Carrera%type)
  is 
    i number;
    eCodCarrera exception;
    eCarrera exception;
  begin
    select count(CodCarrera) into i from TCarrera where CodCarrera = vCodCarrera;
    if (i <> 0) then
      raise eCodCarrera;
    end if;
    select count(Carrera) into i from TCarrera where Carrera = vCarrera;
    if (i <> 0) then
      raise eCarrera;
    end if;
    insert into TCarrera values(vCodCarrera, vCarrera);
    commit;
    dbms_output.put_line('Se agrego Carrera');    
    exception
      when eCodCarrera then
        dbms_output.put_line('Error: CodCarrera duplicado');
      when eCarrera then
        dbms_output.put_line('Error: Carrera duplicada');
  end;
  
  procedure spListarCarrera
  is
    cursor cCarreras 
    is
    select CodCarrera, Carrera from TCarrera;
    vCodCarrera TCarrera.CodCarrera%type;
    vCarrera TCarrera.Carrera%type;
  begin
    open cCarreras;
    loop
      fetch cCarreras INTO vCodCarrera, vCarrera;
      exit when cCarreras%notfound;
      DBMS_OUTPUT.PUT_LINE('CodCarrera ' || vCodCarrera);
      DBMS_OUTPUT.PUT_LINE('Carrera ' || vCarrera);      
    end loop;
    close cCarreras;
  end;
  
end;


select * from TCarrera;

execute Carrera.spAgregarCarrera('C0009','Derecho');
execute Carrera.spListarCarrera;
