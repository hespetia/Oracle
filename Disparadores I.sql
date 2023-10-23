-- Disparadores Oracle
drop tablespace TBS_Biblioteca
including contents and datafiles;

create tablespace TBS_Biblioteca
datafile 'C:\Temp\DF_Biblioteca.DBF'
size 50M;
 
create table TAutor
(
   IdAutor number primary key,
   Nombres varchar2 (50),
   Apellidos varchar2(50)
) tablespace TBS_Biblioteca;
 
create table TLibro
(
    CodLibro char(10) primary key,
    Genero varchar2(20),
    Titulo varchar2(100),
    Paginas number,
    IdAutor number,
    foreign key(IdAutor) references TAutor
) tablespace TBS_Biblioteca;

create table TControl 
(
  Usuario varchar2(50),
  Fecha date
) tablespace TBS_Biblioteca;

insert into TAutor values(1,'Mario','Vargas Llosa');
insert into TAutor values(2,'Gabriel','Garcia Marquez');
insert into TAutor values(3,'Paulo','Coello');
select * from TAutor;

-- Trigger que controla los usuarios que insertan libros
create or replace trigger trIngresarLibros 
before insert 
on TLibro
begin 
    insert into TControl values(user,sysdate); 
end; 

insert into TLibro values('L0001','Novela','La casa verde',200,1);
commit;
insert into TLibro values('L0002','Novela','Pantaleon',200,1);
commit;
insert into TLibro values('L0003','Novela','El pez en el agua',200,1);
commit;
insert into TLibro values('L0004','Novela','Cien años de Soledad',300,2);
commit;
insert into TLibro values('L0005','Novela','El coronel',200,2);
commit;
insert into TLibro values('L0006','Novela','La hojarasca',300,2);
commit;

select * from TLibro;
select * from TControl;
