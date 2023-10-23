-- Base de datos BDAcademico
-- Crear una carpeta D://temp
create tablespace "TBS_Academico"
datafile 'D:\Temp\DF_Academico.BDF'
size 100M;

-- Crear tablas
-- Tabla carrera, las tablas son objetos
create table TCarrera
(
  CodCarrera char(5)primary key,
  Carrera varchar(50)
) tablespace "TBS_Academico";

-- Tabla Usuario 
create table TUsuario
(
   Usuario char(5)primary key,
   Contrasena char(5)
)tablespace "TBS_Academico";

-- Tabla Asignatura
create table TAsignatura
(
   CodAsignatura char(5)primary key,
   Asignatura varchar(50),
   CodRequisito char(5),
   foreign key (CodRequisito)references TAsignatura
)tablespace "TBS_Academico";

-- Tabla Alumno
create table TAlumno
(
   CodAlumno char(5)primary key,
   APaterno varchar(50),
   AMaterno varchar(50),
   Nombres varchar(50),
   Usuario char(5) unique,
   CodCarrera char(5),
   foreign key (Usuario)references TUsuario,
   foreign key (CodCarrera)references TCarrera 
) tablespace "TBS_Academico";

-- Tabla Docente
create table TDocente
(
   CodPaterno char(5)primary key,
   APaterno varchar(50),
   AMaterno varchar(50),
   Nombres varchar(50),
   Usuario char(5)unique,
   foreign key(Usuario)references TUsuario
)tablespace "TBS_Academico";

-- Tabla Carga
create table TCarga
(
   IdCarga int primary key,
   CodDocente char(5),
   CodAsignatura char(5),
   Semestre varchar(50),
   foreign key(CodDocente)references TDocente,
   foreign key(CodAsignatura)references TAsignatura
) tablespace "TBS_Academico";

-- Tabla Notas
create table TNotas
(
   CodAlumno char(5),
   CodAsignatura char(5),
   Semestre varchar(50),
   Parcial1 decimal(4,2),
   Parcial2 decimal(4,2),
   NotaFinal decimal(4,2),
   primary key (CodAlumno,CodAsignatura,Semestre),
   foreign key (CodAlumno)references TAlumno,
   foreign key (CodAsignatura)references TAsignatura
)tablespace "TBS_Academico";

-- Inserción de datos
insert into TCarrera values ('C0001','Sistemas');
insert into TCarrera values ('C0002','Enfermeria');
insert into TCarrera values ('C0003','Gatronomia');
insert into TCarrera values ('C0004','Redes');
insert into TCarrera values ('C0005','Diseño Grafico');
insert into TCarrera values ('C0006','Diseño Web');
insert into TCarrera values ('C0007','Contabilidad');
insert into TCarrera values ('C0008','Administracion');
insert into TCarrera values ('C0009','Secretariado');
insert into TCarrera values ('C0010','Marketing');

SELECT * FROM TCarrera;

--Tabla Usuario
insert into TUsuario values ('U0001','123');
insert into TUsuario values ('U0002','234');
insert into TUsuario values ('U0003','345');
insert into TUsuario values ('U0004','456');
insert into TUsuario values ('U0005','567');
insert into TUsuario values ('U0006','678');
insert into TUsuario values ('U0007','789');
insert into TUsuario values ('U0008','891');
insert into TUsuario values ('U0009','912');
insert into TUsuario values ('U0010','101');
insert into TUsuario values ('U0011','102');
insert into TUsuario values ('U0012','103');
insert into TUsuario values ('U0013','104');
insert into TUsuario values ('U0014','105');
insert into TUsuario values ('U0015','106');
insert into TUsuario values ('U0016','107');
insert into TUsuario values ('U0017','108');
insert into TUsuario values ('U0018','109');
insert into TUsuario values ('U0019','110');
insert into TUsuario values ('U0020','111');
insert into TUsuario values ('U0021','112');
insert into TUsuario values ('U0022','113');
insert into TUsuario values ('U0023','114');
insert into TUsuario values ('U0024','115');
insert into TUsuario values ('U0025','116');
insert into TUsuario values ('U0026','117');
insert into TUsuario values ('U0027','118');
insert into TUsuario values ('U0028','119');
insert into TUsuario values ('U0029','120');
insert into TUsuario values ('U0030','121');
insert into TUsuario values ('U0031','122');
insert into TUsuario values ('U0032','123');
insert into TUsuario values ('U0033','124');
insert into TUsuario values ('U0034','125');
insert into TUsuario values ('U0035','126');
insert into TUsuario values ('U0036','127');
insert into TUsuario values ('U0037','128');
insert into TUsuario values ('U0038','129');
insert into TUsuario values ('U0039','130');
insert into TUsuario values ('U0040','131');

SELECT *FROM TUsuario; 

--Tabla Alumno
insert into TAlumno values('A0001','Perez','Quispe','Juan','U0001','C0001');
insert into TAlumno values('A0002','Salazar','Magariño','Jose','U0002','C0002');
insert into TAlumno values('A0003','Dominguez','Rodriguez','Sabrina','U0003','C0003');
insert into TAlumno values('A0004','Alveda','Villar','Mariela','U0004','C0004');
insert into TAlumno values('A0005','Hurtado','Espinoza','Monica','U0005','C0005');
insert into TAlumno values('A0006','Rojas','Molina','Oscar','U0006','C0006');
insert into TAlumno values('A0007','Alcala','Muñoz','Pedro','U0007','C0007');
insert into TAlumno values('A0008','Zamudio','Arriola','Mario','U0008','C0008');
insert into TAlumno values('A0009','Avila','Estrada','Alejandro','U0009','C0009');
insert into TAlumno values('A0010','Palomino','Jimenez','Micaela','U0010','C0010');

SELECT *FROM TAlumno; 

--Tabla Asignatura
insert into TAsignatura values('AS001','Modelamiento de Base de datos ','AS001');
insert into TAsignatura values('AS002','Base de datos 1','AS001');
insert into TAsignatura values('AS003','Base de datos 2','AS003');
insert into TAsignatura values('AS004','Base de datos Avanzado','AS004');
insert into TAsignatura values('AS005','Reparacion y mantemiento de Hardware','AS005');
insert into TAsignatura values('AS006','Estructura de dastos I','AS006');
insert into TAsignatura values('AS007','Desarrollo e implementacion de escritorio','AS007');
insert into TAsignatura values('AS008','Sistemas operativos 1','AS008');
insert into TAsignatura values('AS009','Sistemas operativos 2','AS009');
insert into TAsignatura values('AS010','Lenguaje de programacion 1','AS010');
insert into TAsignatura values('AS011','Lenguaje de programacion 2','AS011');
insert into TAsignatura values('AS012','Diseño web','AS012');
insert into TAsignatura values('AS013','Taller de Ofimatica','AS013');
insert into TAsignatura values('AS014','Excel 1','AS014');
insert into TAsignatura values('AS015','Excel 2','AS015');
insert into TAsignatura values('AS016','Excel 3','AS016');
insert into TAsignatura values('AS017','Administracion de Base de Datos','AS017');
insert into TAsignatura values('AS018','Primeros Auxilios','AS018');
insert into TAsignatura values('AS019','Matematica 1','AS019');
insert into TAsignatura values('AS020','Matematica 2','AS020');
insert into TAsignatura values('AS021','Hardware 1','AS021');
insert into TAsignatura values('AS022','Hardware 2','AS022');
insert into TAsignatura values('AS023','Cableado estructurado','AS023');
insert into TAsignatura values('AS024','Modelamiento y diseño de sistemas','AS024');
insert into TAsignatura values('AS025','Base de datos I','AS025');
insert into TAsignatura values('AS026','Base de datos I','AS026');
insert into TAsignatura values('AS027','Base de datos I','AS027');
insert into TAsignatura values('AS028','Base de datos I','AS028');
insert into TAsignatura values('AS029','Base de datos I','AS029');
insert into TAsignatura values('AS030','Base de datos I','AS030');
insert into TAsignatura values('AS031','Base de datos I','AS031');
insert into TAsignatura values('AS032','Base de datos I','AS032');
insert into TAsignatura values('AS033','Base de datos I','AS033');
insert into TAsignatura values('AS034','Base de datos I','AS034');
insert into TAsignatura values('AS035','Base de datos I','AS035');
insert into TAsignatura values('AS036','Base de datos I','AS036');
insert into TAsignatura values('AS037','Base de datos I','AS037');
insert into TAsignatura values('AS038','Base de datos I','AS038');
insert into TAsignatura values('AS039','Base de datos I','AS039');
insert into TAsignatura values('AS040','Base de datos I','AS040');

SELECT * FROM TAsignatura;

--Tabla Notas
insert into TNotas values('A0001','AS001','Primer Semestre','14.5','15','14.75');
insert into TNotas values('A0002','AS002','Segundo Semestre','14.3','15.5','14.9');
insert into TNotas values('A0003','AS003','Primer Semestre','13.8','16','14.9');
insert into TNotas values('A0004','AS004','Segundo Semestre','10.9','15','12.95');
insert into TNotas values('A0005','AS005','Primer Semestre','17.1','14','15.55');
insert into TNotas values('A0006','AS006','Segundo Semestre','19','18','18.5');
insert into TNotas values('A0007','AS007','Primer Semestre','16','17','16.5');
insert into TNotas values('A0008','AS008','Segundo Semestre','17.3','11','14.15');
insert into TNotas values('A0009','AS009','Primer Semestre','13','15.3','14.15');
insert into TNotas values('A0010','AS010','Segundo Semestre','11.5','20','15.75');
insert into TNotas values('A0001','AS011','Primer Semestre','09','14','11.5');
insert into TNotas values('A0002','AS012','Segundo Semestre','18.2','11','14.6');
insert into TNotas values('A0003','AS013','Primer Semestre','01','15','8');
insert into TNotas values('A0004','AS014','Segundo Semestre','14','15.6','14.8');
insert into TNotas values('A0005','AS015','Primer Semestre','15','15.8','15.4');
insert into TNotas values('A0006','AS016','Segundo Semestre','13.9','19','16.45');
insert into TNotas values('A0007','AS017','Primer Semestre','14','15','14.5');
insert into TNotas values('A0008','AS018','Segundo Semestre','14.3','18','16.5');
insert into TNotas values('A0009','AS019','Primer Semestre','17','08','12.5');
insert into TNotas values('A0010','AS020','Segundo Semestre','19','19','19');
insert into TNotas values('A0001','AS022','Primer Semestre','20','09','14.5');
insert into TNotas values('A0002','AS023','Segundo Semestre','19','02','10.5');
insert into TNotas values('A0003','AS023','Primer Semestre','08','16.7','12.35');
insert into TNotas values('A0004','AS024','Segundo Semestre','08','18.1','13.05');
insert into TNotas values('A0005','AS025','Primer Semestre','09','15.5','12.5');
insert into TNotas values('A0006','AS026','Segundo Semestre','14','17.8','15.9');
insert into TNotas values('A0007','AS027','Primer Semestre','13','15.5','14.25');
insert into TNotas values('A0008','AS028','Segundo Semestre','14','15.9','14.95');
insert into TNotas values('A0009','AS029','Primer Semestre','14','19','16.5');
insert into TNotas values('A0010','AS030','Segundo Semestre','03','20','11.5');
insert into TNotas values('A0001','AS031','Primer Semestre','14.9','09','11.95');
insert into TNotas values('A0002','AS032','Segundo Semestre','19','03','11');
insert into TNotas values('A0003','AS033','Primer Semestre','13','19','16');
insert into TNotas values('A0004','AS034','Segundo Semestre','13','03','8');
insert into TNotas values('A0005','AS035','Primer Semestre','12','16','14');
insert into TNotas values('A0006','AS036','Segundo Semestre','11','03','7');
insert into TNotas values('A0007','AS037','Primer Semestre','16','03','9.5');
insert into TNotas values('A0008','AS038','Segundo Semestre','05','19','12');
insert into TNotas values('A0009','AS039','Primer Semestre','20','13','16.5');
insert into TNotas values('A0010','AS040','Segundo Semestre','19','18','18.5');

SELECT * FROM TNotas;

--Tabla Docente
insert into TDocente values('D0001','Salazar','Bautista','Sonia','U0001');
insert into TDocente values('D0002','Mendoza','Prada','Pamela','U0002');
insert into TDocente values('D0003','Aguilar','Carvajal ','Jorge','U0003');
insert into TDocente values('D0004','Barragan','Figueroa','Alonso','U0004');
insert into TDocente values('D0005','Garrido','Llano','Luis','U0005');
insert into TDocente values('D0006','Lara','Pardo','Leo','U0006');
insert into TDocente values('D0007','Madrigal','Oliver ','Arturo','U0007');
insert into TDocente values('D0008','Paredes ','Prada','Rodolfo','U0008');
insert into TDocente values('D0009','Vidal ','Pastor','Renzo','U0009');
insert into TDocente values('D0010','Zurita ','Prada','Miguel','U0010');
insert into TDocente values('D0011','Suarez ','Alcantara','Jhony','U0011');
insert into TDocente values('D0012','Romero','Ocaña ','Tiago','U0012');
insert into TDocente values('D0013','Segura','Toledo','Fernando','U0013');
insert into TDocente values('D0014','Taboada','Ocaña','Facundo','U0014');
insert into TDocente values('D0015','Salazar','Paz','Adriano','U0015');
insert into TDocente values('D0016','Mariño','Quesada','Fatima','U0016');
insert into TDocente values('D0017','Roldan','Olmedo','Amelia','U0017');
insert into TDocente values('D0018','Santos','Olmo ','Roxana','U0018');
insert into TDocente values('D0019','Quintanilla','Prada','Mafer','U0019');
insert into TDocente values('D0020','Peña','Manzanares','Alizon','U0020');
insert into TDocente values('D0021','Montesinos','Ordoñez','Joselin','U0021');
insert into TDocente values('D0022','Montes','Ortega','Gustavo','U0022');
insert into TDocente values('D0023','Moran ','Pereira ','Cesar','U0023');
insert into TDocente values('D0024','Pavon ','Ortiz ','Miqueas','U0024');
insert into TDocente values('D0025','Pazos','Nuñez','David','U0025');
insert into TDocente values('D0026','Salazar','Pedraza  ','Dario','U0026');
insert into TDocente values('D0027','Morales','Navas ','Gino','U0027');
insert into TDocente values('D0028','Salazar','Otero','Paolo','U0028');
insert into TDocente values('D0029','Salazar','Novoa','Federico','U0029');
insert into TDocente values('D0030','Ponce','Neira','Hernan','U0030');
insert into TDocente values('D0031','Pineda','Lerma','Henry','U0031');
insert into TDocente values('D0032','Lumbreras','Machado','Juan Jose','U0032');
insert into TDocente values('D0033','Pinedo','Roman ','Emilia','U0033');
insert into TDocente values('D0034','Moya','Perez ','Mirian','U0034');
insert into TDocente values('D0035','Lerma ','Piñeiro','Perla','U0035');
insert into TDocente values('D0036','Leon','Prada','Lourdes','U0036');
insert into TDocente values('D0037','Mosquera','Morcillo','Patricio','U0037');
insert into TDocente values('D0038','Losada','Piña','Fiorella','U0038');
insert into TDocente values('D0039','Lujan','Mora','Elsa','U0039');
insert into TDocente values('D0040','Morera ','Muro','Denis','U0040');

SELECT * FROM TDocente;

--Tabla Carga
insert into TCarga values('1','D0001','AS001','Primer Semestre');
insert into TCarga values('2','D0002','AS002','Segundo Semestre');
insert into TCarga values('3','D0003','AS003','Primer Semestre');
insert into TCarga values('4','D0004','AS004','Segundo Semestre');
insert into TCarga values('5','D0005','AS005','Primer Semestre');
insert into TCarga values('6','D0006','AS006','Segundo Semestre');
insert into TCarga values('7','D0007','AS007','Primer Semestre');
insert into TCarga values('8','D0008','AS008','Segundo Semestre');
insert into TCarga values('9','D0009','AS009','Primer Semestre');
insert into TCarga values('10','D0010','AS010','Segundo Semestre');
insert into TCarga values('11','D0011','AS011','Primer Semestre');
insert into TCarga values('12','D0012','AS012','Segundo Semestre');
insert into TCarga values('13','D0013','AS013','Primer Semestre');
insert into TCarga values('14','D0014','AS014','Segundo Semestre');
insert into TCarga values('15','D0015','AS015','Primer Semestre');
insert into TCarga values('16','D0016','AS016','Segundo Semestre');
insert into TCarga values('17','D0017','AS017','Primer Semestre');
insert into TCarga values('18','D0018','AS018','Segundo Semestre');
insert into TCarga values('19','D0019','AS019','Primer Semestre');
insert into TCarga values('20','D0020','AS020','Segundo Semestre');
insert into TCarga values('21','D0021','AS021','Primer Semestre');
insert into TCarga values('22','D0022','AS022','Segundo Semestre');
insert into TCarga values('23','D0023','AS023','Primer Semestre');
insert into TCarga values('24','D0024','AS024','Segundo Semestre');
insert into TCarga values('25','D0025','AS025','Primer Semestre');
insert into TCarga values('26','D0026','AS026','Segundo Semestre');
insert into TCarga values('27','D0027','AS027','Primer Semestre');
insert into TCarga values('28','D0028','AS028','Segundo Semestre');
insert into TCarga values('29','D0029','AS029','Primer Semestre');
insert into TCarga values('30','D0030','AS030','Segundo Semestre');
insert into TCarga values('31','D0031','AS031','Primer Semestre');
insert into TCarga values('32','D0032','AS032','Segundo Semestre');
insert into TCarga values('33','D0033','AS033','Primer Semestre');
insert into TCarga values('34','D0034','AS034','Segundo Semestre');
insert into TCarga values('35','D0035','AS035','Primer Semestre');
insert into TCarga values('36','D0036','AS036','Segundo Semestre');
insert into TCarga values('37','D0037','AS037','Primer Semestre');
insert into TCarga values('38','D0038','AS038','Segundo Semestre');
insert into TCarga values('39','D0039','AS039','Primer Semestre');
insert into TCarga values('40','D0040','AS040','Segundo Semestre');

SELECT * FROM TCarga;
