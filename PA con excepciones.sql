-- Procedimientos ALmacenados con Excepciones
create or replace procedure spBuscarCarrera(vCodCarrera TCarrera.CodCarrera%type)
is
   vCarrera TCarrera.Carrera%type;
begin
  select Carrera into vCarrera
  from TCarrera where CodCarrera = vCodCarrera;
  dbms_output.put_line(vCarrera);
exception
  when No_Data_Found then
    dbms_output.put_line('No existe codigo');
end;

select * from TCarrera;
execute spBuscarCarrera('C0001');

-- ActualizarCarrera con excepciones
create or replace procedure spActualizarCarrera(
vCodCarrera TCarrera.CodCarrera%type, vCarrera TCarrera.Carrera%type)
is
  contador number;
begin
  select count(*) into contador
  from TCarrera where CodCarrera = vCodCarrera;
  if (contador = 0) then
    raise No_Data_Found;
  end if;
  update TCarrera set Carrera = vCarrera where CodCarrera = vCodCarrera;
  commit;
  dbms_output.put_line('Carrera actualizada');
exception
  when No_Data_Found then
    dbms_output.put_line('No existe carrera para actualizar');
end;

select * from TCarrera;
execute spActualizarCarrera('C0005','Medicina');

-- Actualizar con Excepciones de Usuario
create or replace procedure spActualizarCarrera02(
vCodCarrera TCarrera.CodCarrera%type, vCarrera TCarrera.Carrera%type)
is
  contador number;
  ExcepcionUsuario exception;
begin
  select count(*) into contador
  from TCarrera where CodCarrera = vCodCarrera;
  if (contador = 0) then
    raise ExcepcionUsuario;
  end if;
  update TCarrera set Carrera = vCarrera where CodCarrera = vCodCarrera;
  commit;
  dbms_output.put_line('Carrera actualizada');
exception
  when ExcepcionUsuario then
    dbms_output.put_line('No existe carrera para actualizar');
end;

execute spActualizarCarrera02('C0005','Medicina');

-- Excepcion abreviada
-- Los mensajes de error deben de estar entre los numeros
-- -20999 y -20000
create or replace procedure spActualizarCarrera03(
vCodCarrera TCarrera.CodCarrera%type, vCarrera TCarrera.Carrera%type)
is
  contador number;  
begin
  select count(*) into contador
  from TCarrera where CodCarrera = vCodCarrera;
  if (contador = 0) then
    Raise_Application_Error(-20000,'No existe empleado');
  end if;
  update TCarrera set Carrera = vCarrera where CodCarrera = vCodCarrera;
  commit;
  dbms_output.put_line('Carrera actualizada');
end;

execute spActualizarCarrera03('C005','Medicina');

-- Variante
create or replace procedure spActualizarCarrera04(
vCodCarrera TCarrera.CodCarrera%type, vCarrera TCarrera.Carrera%type)
is
  contador number;  
begin
  select count(*) into contador
  from TCarrera where CodCarrera = vCodCarrera;
  if (contador = 0) then
    Raise_Application_Error(-20000,'No existe empleado');
  end if;
  update TCarrera set Carrera = vCarrera where CodCarrera = vCodCarrera;
  commit;
  dbms_output.put_line('Carrera actualizada');
exception
  when others then
    dbms_output.put_line('Error Nro Oracle' || to_char(sqlcode));
    dbms_output.put_line(sqlerrm);
end;

execute spActualizarCarrera04('C005','Medicina');


