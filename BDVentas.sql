create tablespace "TBS_Ventas"
datafile 'D:\Temp\DF_Ventas.BDF'
size 100M;

 --Tabla Cliente
create table TCliente
(
  CodCliente char(5)primary key,
  Apellidos varchar(50),
  Nombres varchar(50),
  Direccion varchar(50)
)tablespace "TBS_Ventas";

--Tabla Categoria
create table TCategoria
(
  CodCategoria char(5)primary key,
  Nombre varchar(50),
  CategoriaPadre char(5),
  foreign key (CategoriaPadre)references TCategoria
)tablespace "TBS_Ventas";

 --Tabla Vendedor
create table TVendedor
(
    CodVendedor char(5)primary key,
    Apellidos varchar(50),
    Nombres varchar(50)
)tablespace "TBS_Ventas";

 --Tabla Boleta
create table TBoleta
(
  NroBoleta int primary key,
  Fecha date,
  CodCliente char(5),
  CodVendedor char(5),
  Anulado number(1,0),
  foreign key (CodCliente)references TCliente(CodCliente),
  foreign key (CodVendedor)references TVendedor(CodVendedor)
)tablespace "TBS_Ventas";

 --Tabla Producto
create table TProducto
(
  CodProduto char(5)primary key,
  Nombre varchar(50),
  UnidadDeMedida varchar(50),
  Precio decimal(4,2),
  Stock int,
  CodCategoria char (5),
  foreign key (CodCategoria)references TCategoria
)tablespace "TBS_Ventas";

 --Tabla Detalle
create table TDetalle
(
  NroBoleta int,
  CodProducto char(5),
  Cantidad int,
  PrecioUnitario decimal(4,2),
  primary key (NroBoleta,CodProducto),
  foreign key (NroBoleta) references TBoleta,
  foreign key (CodProducto) references TProducto 
)tablespace "TBS_Ventas";
