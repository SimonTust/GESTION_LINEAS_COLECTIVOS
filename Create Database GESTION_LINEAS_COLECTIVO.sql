Create Database GESTION_LINEAS_COLECTIVOS;
use GESTION_LINEAS_COLECTIVOS;

go




Create Table LINEA (
	[Id Linea] int IDENTITY (1,1) Primary Key,
	Nombre Varchar(100) NOT NULL,
	Numero int NOT NULL,
	FechaCreacion DATETIME NOT NULL DEFAULT GETDATE()

);

GO

Create Table SERVICIO(
	[Id Servicio] Int IDENTITY(1,1) PRIMARY KEY,
	[Id Linea] Int NOT NULL,
	[Id Unidad] Int NOT NULL,
	[Id Chofer] Int NOT NULL,
	Fecha DATE NOT NULL,
	[Hora Inicio] DATETIME NOT NULL,
	[Hora Fin] DATETIME NOT NULL,
	Observaciones VARCHAR(255) NULL
);

GO

Create Table UNIDAD (
	[Id Unidad] Int IDENTITY(1,1) PRIMARY KEY,
	[Id Linea] Int NOT NULL,
	Patente VARCHAR(50) NOT NULL,
	Modelo VARCHAR (50) NOT NULL,
	[Año] DATE NULL,
	Capacidad Int NULL,
	Estado VARCHAR(50) NOT NULL
);

GO

Create Table RECORRIDO (
	[Id Recorrido] Int IDENTITY(1,1) PRIMARY KEY,
	[Id Linea] Int NOT NULL,
	[Tipo(IDA/VUELTA)] VARCHAR(50) NULL,
	Descripcion VARCHAR(255) NULL,
	DuracionEstimada TIME NULL
);

GO

Create Table [RECORRIDO PARADA](
	[Id Recorrido] Int NOT NULL,
	[Id Parada] Int NOT NULL,
	Orden Int NOT NULL,
	CONSTRAINT Pk_RecorridoParada PRIMARY KEY ([Id Recorrido], [Id Parada])
);

GO

Create Table CHOFER (
	[Id Chofer] Int IDENTITY(1,1) PRIMARY KEY,
	[Id Linea] Int NOT NULL,
	Dni Int NOT NULL,
	NombreApellido VARCHAR(100) NOT NULL,
	Licencia VARCHAR(50) NOT NULL,
	FechaIngreso DATETIME NOT NULL,
	Activo CHAR(1) NOT NULL
);

GO

Create Table PARADA (
	[Id Parada] Int IDENTITY(1,1) PRIMARY KEY,
	[Id Linea] Int NOT NULL,
	Nombre VARCHAR(100) NOT NULL,
	Direccion VARCHAR(255) NULL,
	Longitud DECIMAL(10,6) NULL
);

GO

Create Table USUARIO (
	[Id Usuario] Int IDENTITY(1,1) PRIMARY KEY,
	NombreUsuario VARCHAR(50) NOT NULL,
	[Contraseña] VARCHAR(50) NOT NULL,
	NombreCompleto VARCHAR(100) NOT NULL,
	Email VARCHAR(100) NOT NULL,
	Activo CHAR(1) NOT NULL,
	[Rol (Administrador / Inspector / Operador)] VARCHAR(50) NOT NULL
);

