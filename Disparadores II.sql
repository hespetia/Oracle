-- Triggers II
-- Tabla Producto
CREATE TABLE Producto 
(IdProducto number(5) primary key, 
Producto varchar2(32), 
Proveedor varchar2(32), 
PrecioUnitario number(7,2)
); 

-- Tabla historial cuando se actualiza el Precio de un Producto
CREATE TABLE ProductoPrecioHistorial 
(IdProducto number(5), 
Producto varchar2(32), 
Proveedor varchar2(32), 
PrecioUnitario number(7,2)
); 

-- trigger para actualizar automaticamente
CREATE or REPLACE TRIGGER trPrecioHistorial 
  BEFORE UPDATE OF PrecioUnitario 
  ON Producto 
  FOR EACH ROW 
BEGIN 
  INSERT INTO ProductoPrecioHistorial 
  VALUES (:old.IdProducto, :old.Producto, :old.Proveedor, 
  :old.PrecioUnitario); 
END; 

insert into Producto values(1,'Bebida','Fanta',2.5);
insert into Producto values(2,'Gaseosa','Sprite',3.5);
insert into Producto values(3,'Te','Huyro',5);
insert into Producto values(4,'Arroz','Costeño',7.5);

select * from Producto;

select * from ProductoPrecioHistorial;

UPDATE Producto SET  Proveedor = 'Coca Cola' WHERE IdProducto = 1;

-- Tabla para el historial de la tabla Producto
drop table ProductoHistorial;
CREATE TABLE ProductoHistorial
(Mensaje varchar2(50), 
 Current_Date date
);

-- Trigger antes de actualizar un producto en cualquiera de sus campos
CREATE or REPLACE TRIGGER trAntesActualizarProducto01 
BEFORE -- Antes
  UPDATE ON Producto 
Begin 
  -- Se ingresa una sola fila por conjunto de sentencias 
  INSERT INTO ProductoHistorial Values('Actualizado Antes Producto a nivel de sentencia',sysdate); 
END; 

-- Trigger a nivel de fila
CREATE or REPLACE TRIGGER trAntesActualizarProducto02 
BEFORE -- Antes
  UPDATE ON Producto 
  FOR EACH ROW 
Begin 
  -- Se ingresa una fila por sentencia 
  INSERT INTO ProductoHistorial Values('Actualizado Antes Producto a nivel de Fila',sysdate); 
END; 

-- Trigger despues de actualizar un producto en cualquiera de sus campos
CREATE or REPLACE TRIGGER trDespuesActualizarProducto03 
AFTER -- Despues
  UPDATE ON Producto 
Begin 
  -- Se ingresa una sola fila por conjunto de sentencias 
  INSERT INTO ProductoHistorial Values('Actualizado Despues Producto a nivel de sentencia',sysdate); 
END; 

-- Trigger despues de actualizar a nivel de fila
CREATE or REPLACE TRIGGER trDespuesActualizarProducto04
AFTER -- Despues
  UPDATE ON Producto 
  FOR EACH ROW 
Begin 
  -- Se ingresa una fila por sentencia 
  INSERT INTO ProductoHistorial Values('Actualizado Despues Producto a nivel de fila',sysdate); 
END; 

select * from Producto;
select * from ProductoHistorial;
delete from ProductoHistorial;

update Producto set Proveedor='Coca Cola' where IdProducto=1;
update Producto set Proveedor='Paisana' where IdProducto=2;



