CREATE SCHEMA Cine_DB;
USE Cine_DB;

CREATE TABLE IF NOT EXISTS Clientes (
id_Cliente int PRIMARY KEY auto_increment,
Nombre text(50),
Apellido text(50),
DNI varchar(20),
email varchar(40),
Edad int,
id_Sexo int,
User_Insert text(15),
Fecha_Insert datetime,
User_Update text(15),
Fecha_Update datetime
);

CREATE TABLE IF NOT EXISTS Sexo (
id_Sexo int PRIMARY KEY auto_increment,
Descripcion text(20),
User_Insert text(15),
Fecha_Insert datetime,
User_Update text(15),
Fecha_Update datetime
);

CREATE TABLE IF NOT EXISTS Peliculas (
id_Pelicula int PRIMARY KEY auto_increment,
Titulo varchar(80),
Fecha_Estreno date,
id_Pais int,
id_Clasificacion_Edad int,
id_Genero int,
id_Distribuidor int,
User_Insert text(15),
Fecha_Insert datetime,
User_Update text(15),
Fecha_Update datetime
);

CREATE TABLE IF NOT EXISTS Clasificaciones_Edad (
id_Clasificacion_Edad int PRIMARY KEY auto_increment,
Sigla text(3),
Descripcion varchar(50),
User_Insert text(15),
Fecha_Insert datetime,
User_Update text(15),
Fecha_Update datetime
);

CREATE TABLE IF NOT EXISTS Generos (
id_Genero int PRIMARY KEY auto_increment,
Nombre text(15),
User_Insert text(15),
Fecha_Insert datetime,
User_Update text(15),
Fecha_Update datetime
);

CREATE TABLE IF NOT EXISTS Paises (
id_Pais int PRIMARY KEY auto_increment,
Nombre text(25),
User_Insert text(15),
Fecha_Insert datetime,
User_Update text(15),
Fecha_Update datetime
);

CREATE TABLE IF NOT EXISTS Distribuidores (
id_Distribuidor int PRIMARY KEY auto_increment,
Nombre varchar(25),
id_Pais int,
Nombre_Contacto text(40),
email_Contacto varchar(40),
User_Insert text(15),
Fecha_Insert datetime,
User_Update text(15),
Fecha_Update datetime
);

CREATE TABLE IF NOT EXISTS Proveedores (
id_Proveedor int PRIMARY KEY auto_increment,
Nombre varchar(50),
id_Rubro_Proveedor int,
Direccion varchar(80),
Telefono numeric(10,2),
email varchar(40),
User_Insert text(15),
Fecha_Insert datetime,
User_Update text(15),
Fecha_Update datetime
);

CREATE TABLE IF NOT EXISTS Rubros_Proveedores (
id_Rubro_Proveedor int PRIMARY KEY auto_increment,
Descripcion text(30),
User_Insert text(15),
Fecha_Insert datetime,
User_Update text(15),
Fecha_Update datetime
);

CREATE TABLE IF NOT EXISTS Facturas_Proveedores (
Num_Factura int PRIMARY KEY auto_increment,
id_Proveedor int,
Fecha_compra date,
Importe decimal (8,2),
User_Insert text(15),
Fecha_Insert datetime,
User_Update text(15),
Fecha_Update datetime
);

CREATE TABLE IF NOT EXISTS Detalle_Facturas_Proveedores (
id_Detalle_Fact_Prov int PRIMARY KEY auto_increment,
id_Articulo int,
Cantidad numeric (6,2),
Importe_unitario decimal (8,2),
Num_Factura int,
User_Insert text(15),
Fecha_Insert datetime,
User_Update text(15),
Fecha_Update datetime
);

CREATE TABLE IF NOT EXISTS Articulos (
id_Articulo int PRIMARY KEY auto_increment,
id_Categoria_Articulo int,
Costo_Articulo numeric (8,2),
Precio_Articulo numeric (5,2),
id_Proveedor int,
User_Insert text(15),
Fecha_Insert datetime,
User_Update text(15),
Fecha_Update datetime
);

CREATE TABLE IF NOT EXISTS Categoria_Articulos (
id_Categoria_Articulo int PRIMARY KEY auto_increment,
Descripcion text(30),
User_Insert text(15),
Fecha_Insert datetime,
User_Update text(15),
Fecha_Update datetime
);

CREATE TABLE IF NOT EXISTS Facturas_Articulos (
Num_Factura int PRIMARY KEY auto_increment,
Fecha_emision date,
Hora_emision time,
id_Cliente int,
id_Empleado int,
id_Promocion int,
id_Medio_Pago int,
Importe decimal (6,2),
User_Insert text(15),
Fecha_Insert datetime,
User_Update text(15),
Fecha_Update datetime
);

CREATE TABLE IF NOT EXISTS Detalle_Facturas_Articulos (
id_Detalle_Fact int PRIMARY KEY auto_increment,
Num_Factura int,
id_Articulo int,
Cantidad numeric (2,2),
Importe_unitario numeric (4,2),
User_Insert text(15),
Fecha_Insert datetime,
User_Update text(15),
Fecha_Update datetime
);

CREATE TABLE IF NOT EXISTS Valor_Entrada (
id_Valor_Entrada int PRIMARY KEY auto_increment,
Importe numeric (4,2),
User_Insert text(15),
Fecha_Insert datetime,
User_Update text(15),
Fecha_Update datetime
);

CREATE TABLE IF NOT EXISTS Facturas_Entradas (
Num_Factura int PRIMARY KEY auto_increment,
Fecha_emision date,
Hora_emision time,
id_Cliente int,
id_Empleado int,
Cantidad_Entradas numeric (2,2),
id_Medio_Pago int,
id_Promocion int,
Importe decimal (6,2),
User_Insert text(15),
Fecha_Insert datetime,
User_Update text(15),
Fecha_Update datetime
);

CREATE TABLE IF NOT EXISTS Detalle_Facturas_Entradas (
Num_Entrada int PRIMARY KEY auto_increment,
id_Sala int,
Fila varchar(3),
Asiento varchar(3),
id_Pelicula int,
id_Hora_Funcion int,
Num_Factura int,
User_Insert text(15),
Fecha_Insert datetime,
User_Update text(15),
Fecha_Update datetime
);

CREATE TABLE IF NOT EXISTS Hora_Funciones (
id_Hora_Funcion int PRIMARY KEY auto_increment,
Hora time,
Tiempo_dia text(10),
User_Insert text(15),
Fecha_Insert datetime,
User_Update text(15),
Fecha_Update datetime
);

CREATE TABLE IF NOT EXISTS Promociones (
id_Promocion int PRIMARY KEY auto_increment,
Descripcion varchar(25),
User_Insert text(15),
Fecha_Insert datetime,
User_Update text(15),
Fecha_Update datetime
);

CREATE TABLE IF NOT EXISTS Medios_Pago (
id_Medio_Pago int PRIMARY KEY auto_increment,
Descripcion varchar(20),
User_Insert text(15),
Fecha_Insert datetime,
User_Update text(15),
Fecha_Update datetime
);

CREATE TABLE IF NOT EXISTS Salas (
id_Sala int PRIMARY KEY auto_increment,
Titulo_Sala varchar(30),
Capacidad int,
User_Insert text(15),
Fecha_Insert datetime,
User_Update text(15),
Fecha_Update datetime
);

CREATE TABLE IF NOT EXISTS Empleados (
id_Empleado int PRIMARY KEY auto_increment,
Nombre text(30),
Apellido text(30),
id_Sexo int,
DNI varchar(20),
id_Cargo int,
Salario numeric(8,2),
User_Insert text(15),
Fecha_Insert datetime,
User_Update text(15),
Fecha_Update datetime
);

CREATE TABLE IF NOT EXISTS Cargos (
id_Cargo int PRIMARY KEY auto_increment,
Descripcion varchar(100),
User_Insert text(15),
Fecha_Insert datetime,
User_Update text(15),
Fecha_Update datetime
);

CREATE TABLE IF NOT EXISTS Users (
id_User int PRIMARY KEY auto_increment,
Nombre_user text(15),
Apellido_user text(15),
Fecha_Alta_user date,
Fecha_Modif_user datetime,
User_Insert text(15),
Fecha_Insert datetime,
User_Update text(15),
Fecha_Update datetime
);


ALTER TABLE Clientes
ADD foreign key	(id_Sexo)
REFERENCES Sexo (id_Sexo);


ALTER TABLE Peliculas
ADD foreign key	(id_Pais)
REFERENCES Paises (id_Pais);


ALTER TABLE Peliculas
ADD foreign key	(id_Clasificacion_Edad)
REFERENCES Clasificaciones_Edad	(id_Clasificacion_Edad);


ALTER TABLE Peliculas
ADD foreign key	(id_Genero)
REFERENCES Generos (id_Genero);


ALTER TABLE Peliculas
ADD foreign key (id_Distribuidor)
REFERENCES Distribuidores (id_Distribuidor);


ALTER TABLE Proveedores
ADD foreign key (id_Rubro_Proveedor)
REFERENCES Rubros_Proveedores (id_Rubro_Proveedor);


ALTER TABLE Facturas_Proveedores
ADD foreign key	(id_Proveedor)
REFERENCES Proveedores (id_Proveedor);


ALTER TABLE Detalle_Facturas_Proveedores
ADD foreign key (id_Articulo)
REFERENCES Articulos (id_Articulo);


ALTER TABLE Detalle_Facturas_Proveedores
ADD foreign key	(Num_Factura)
REFERENCES Facturas_Proveedores (Num_Factura);


ALTER TABLE Articulos
ADD foreign key	(id_Categoria_Articulo)
REFERENCES Categoria_Articulos (id_Categoria_Articulo);


ALTER TABLE Articulos
ADD foreign key	(id_Proveedor)
REFERENCES Proveedores (id_Proveedor);

ALTER TABLE Facturas_Articulos
ADD foreign key (id_Cliente)
REFERENCES Clientes (id_Cliente);


ALTER TABLE Facturas_Articulos
ADD foreign key	(id_Empleado)
REFERENCES Empleados (id_Empleado);


ALTER TABLE Facturas_Articulos
ADD foreign key	(id_Promocion)
REFERENCES Promociones (id_Promocion);


ALTER TABLE Facturas_Articulos
ADD foreign key	(id_Medio_Pago)
REFERENCES Medios_Pago (id_Medio_Pago);


ALTER TABLE Detalle_Facturas_Articulos
ADD foreign key (Num_Factura)
REFERENCES Facturas_Articulos (Num_Factura);


ALTER TABLE Detalle_Facturas_Articulos
ADD foreign key	(id_Articulo)
REFERENCES Articulos (id_Articulo);


ALTER TABLE Facturas_Entradas
ADD foreign key (id_Cliente)
REFERENCES Clientes (id_Cliente);


ALTER TABLE Facturas_Entradas
ADD foreign key	(id_Empleado)
REFERENCES Empleados (id_Empleado);


ALTER TABLE Facturas_Entradas
ADD foreign key	(id_Medio_Pago)
REFERENCES Medios_Pago (id_Medio_Pago);


ALTER TABLE Facturas_Entradas
ADD foreign key	(id_Promocion)
REFERENCES Promociones (id_Promocion);


ALTER TABLE Detalle_Facturas_Entradas
ADD foreign key	(id_Sala)
REFERENCES Salas (id_Sala);


ALTER TABLE Detalle_Facturas_Entradas
ADD foreign key	(id_Pelicula)
REFERENCES Peliculas (id_Pelicula);


ALTER TABLE Detalle_Facturas_Entradas
ADD foreign key (Num_Factura)
REFERENCES Facturas_Entradas (Num_Factura);

ALTER TABLE Detalle_Facturas_Entradas
ADD foreign key (id_Hora_Funcion)
REFERENCES Hora_Funciones (id_Hora_Funcion);

ALTER TABLE Empleados
ADD foreign key	(id_Sexo)
REFERENCES Sexo (id_Sexo);


ALTER TABLE Empleados
ADD foreign key	(id_Cargo)
REFERENCES Cargos (id_Cargo);