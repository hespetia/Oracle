--Datos para Venta
--Tabla Cliente 
insert into TCliente values('C0001','Perez Quispe','Juan','AV.28 de Julio 168');
insert into TCliente values('C0002','Salazar Magari�o','Jose','AV.Los Faisanes 180');
insert into TCliente values('C0003','Dominguez Rodriguez','Sabrina','AV.Guardia civil 171');
insert into TCliente values('C0004','Alveda Villar','Mariela','AV.Huylas 120');
insert into TCliente values('C0005','Hurtado Espinoza','Monica','AV.Las Gaviotas 145');
insert into TCliente values('C0006','Rojas Molina','Oscar','AV.Los Manzanales 854');
insert into TCliente values('C0007','Alcala Mu�oz','Pedro','Jr.Los Palcos 192');
insert into TCliente values('C0008','Zamudio Arriola','Mario','Jr.13 de Agosto 689');
insert into TCliente values('C0009','Avila Estrada','Alejandro','Jr.13 de Agosto 189');
insert into TCliente values('C0010','Palomino Jimenez','Micaela','Jr.13 de Agosto 169');

SELECT * FROM TCliente;

--Tabla TVendedor
insert into TVendedor values('V0001','Salazar Bautista','Sonia');
insert into TVendedor values('V0002','Mendoza Prada','Pamela');
insert into TVendedor values('V0003','Aguilar Carvajal ','Jorge');
insert into TVendedor values('V0004','Barrag�n Figueroa','Alonso');
insert into TVendedor values('V0005','Garrido Llano','Luis');
insert into TVendedor values('V0006','Lara Pardo','Leo');
insert into TVendedor values('V0007','Madrigal Oliver ','Arturo');
insert into TVendedor values('V0008','Paredes Prada','Rodolfo');
insert into TVendedor values('V0009','Vidal Pastor','Renzo');
insert into TVendedor values('V0010','Zurita Prada','Miguel');

SELECT * FROM TVendedor;

--Tabla TCategoria
insert into TCategoria values('CA001','Frutas','CA001');
insert into TCategoria values('CA002','Lacteos','CA002');
insert into TCategoria values('CA003','Calzado','CA003');
insert into TCategoria values('CA004','Calzado','CA004');
insert into TCategoria values('CA005','Lacteos','CA005');
insert into TCategoria values('CA006','Bebidas','CA006');
insert into TCategoria values('CA007','Pastas','CA007');
insert into TCategoria values('CA008','Menestras','CA008');
insert into TCategoria values('CA009','Embutidos','CA009');
insert into TCategoria values('CA010','Embutidos','CA010');
insert into TCategoria values('CA011','Ferreteria','CA011');
insert into TCategoria values('CA012','Pintura','CA012');
insert into TCategoria values('CA013','Legumbres','CA013');
insert into TCategoria values('CA014','Accesorios','CA014');
insert into TCategoria values('CA015','Belleza','CA015');
insert into TCategoria values('CA016','Optica','CA016');
insert into TCategoria values('CA017','Panaderia','CA017');
insert into TCategoria values('CA018','Muebles','CA018');
insert into TCategoria values('CA019','Farmacia','CA019');
insert into TCategoria values('CA020','Electrodomesticos','CA020');
insert into TCategoria values('CA021','Floreria','CA021');
insert into TCategoria values('CA022','Perfumeria','CA022');
insert into TCategoria values('CA023','Utensilios de cocina','CA023');
insert into TCategoria values('CA024','Utensilios de aseo','CA024');
insert into TCategoria values('CA025','Verduras','CA025');
insert into TCategoria values('CA026','Frutas','CA026');
insert into TCategoria values('CA027','Golosinas','CA027');
insert into TCategoria values('CA028','Perfumeria','CA028');
insert into TCategoria values('CA029','Utiles escolares','CA029');
insert into TCategoria values('CA030','Calzado','CA030');
insert into TCategoria values('CA031','Ropa inerior','CA031');
insert into TCategoria values('CA032','Carnes','CA032');
insert into TCategoria values('CA033','Utensilios de cocina','CA033');
insert into TCategoria values('CA034','Cereales','CA034');
insert into TCategoria values('CA035','Menestras','CA035');
insert into TCategoria values('CA036','Lacteos','CA036');
insert into TCategoria values('CA037','Licores','CA037');
insert into TCategoria values('CA038','Embutidos','CA038');
insert into TCategoria values('CA039','Bebidas','CA039');
insert into TCategoria values('CA040','Pastas ','CA040');

SELECT * FROM TCategoria

insert into TBoleta values('1','15/07/2015','C0001','V0001','1');
insert into TBoleta values('2','15/07/2015','C0002','V0002','1');
insert into TBoleta values('3','15/07/2015','C0003','V0003','1');
insert into TBoleta values('4','15/07/2015','C0004','V0004','1');
insert into TBoleta values('5','15/07/2015','C0005','V0005','1');
insert into TBoleta values('6','15/07/2015','C0006','V0006','1');
insert into TBoleta values('7','15/07/2015','C0007','V0007','2');
insert into TBoleta values('8','15/07/2015','C0008','V0008','2');
insert into TBoleta values('9','15/07/2015','C0009','V0009','2');
insert into TBoleta values('10','15/07/2015','C0010','V0010','1');
insert into TBoleta values('11','15/07/2015','C0001','V0001','1');
insert into TBoleta values('12','15/07/2015','C0002','V0002','1');
insert into TBoleta values('13','15/07/2015','C0003','V0003','1');
insert into TBoleta values('14','15/07/2015','C0004','V0004','1');
insert into TBoleta values('15','15/07/2015','C0005','V0005','1');
insert into TBoleta values('16','15/07/2015','C0006','V0006','2');
insert into TBoleta values('17','15/07/2015','C0007','V0007','1');
insert into TBoleta values('18','15/07/2015','C0008','V0008','2');
insert into TBoleta values('19','15/07/2015','C0009','V0009','1');
insert into TBoleta values('20','15/07/2015','C0010','V0010','1');
insert into TBoleta values('21','15/07/2015','C0001','V0001','1');
insert into TBoleta values('22','15/07/2015','C0002','V0002','1');
insert into TBoleta values('23','15/07/2015','C0003','V0003','1');
insert into TBoleta values('24','15/07/2015','C0004','V0004','1');
insert into TBoleta values('25','15/07/2015','C0005','V0005','1');
insert into TBoleta values('26','15/07/2015','C0006','V0006','1');
insert into TBoleta values('27','15/07/2015','C0007','V0007','1');
insert into TBoleta values('28','15/07/2015','C0008','V0001','1');
insert into TBoleta values('29','15/07/2015','C0009','V0001','2');
insert into TBoleta values('30','15/07/2015','C0010','V0001','1');
insert into TBoleta values('31','15/07/2015','C0001','V0001','1');
insert into TBoleta values('32','15/07/2015','C0002','V0002','1');
insert into TBoleta values('33','15/07/2015','C0003','V0003','2');
insert into TBoleta values('34','15/07/2015','C0004','V0004','1');
insert into TBoleta values('35','15/07/2015','C0005','V0005','1');
insert into TBoleta values('36','15/07/2015','C0006','V0006','1');
insert into TBoleta values('37','15/07/2015','C0007','V0007','1');
insert into TBoleta values('38','15/07/2015','C0008','V0008','2');
insert into TBoleta values('39','15/07/2015','C0009','V0009','2');
insert into TBoleta values('40','15/07/2015','C0010','V0010','2');

SELECT * FROM TBoleta;

