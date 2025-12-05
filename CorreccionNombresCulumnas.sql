USE GESTION_LINEAS_COLECTIVOS;
GO

EXEC sp_rename 'RECORRIDO PARADA', 'RECORRIDO_PARADA';
GO

EXEC sp_rename 'LINEA.[Id Linea]', 'IdLinea', 'COLUMN';
GO

EXEC sp_rename 'SERVICIO.[Id Servicio]', 'IdServicio', 'COLUMN';
EXEC sp_rename 'SERVICIO.[Id Linea]', 'IdLinea', 'COLUMN';
EXEC sp_rename 'SERVICIO.[Id Unidad]', 'IdUnidad', 'COLUMN';
EXEC sp_rename 'SERVICIO.[Id Chofer]', 'IdChofer', 'COLUMN';
EXEC sp_rename 'SERVICIO.[Hora Inicio]', 'HoraInicio', 'COLUMN';
EXEC sp_rename 'SERVICIO.[Hora Fin]', 'HoraFin', 'COLUMN';
GO

EXEC sp_rename 'UNIDAD.[Id Unidad]', 'IdUnidad', 'COLUMN';
EXEC sp_rename 'UNIDAD.[Id Linea]', 'IdLinea', 'COLUMN';
GO

EXEC sp_rename 'RECORRIDO.[Id Recorrido]', 'IdRecorrido', 'COLUMN';
EXEC sp_rename 'RECORRIDO.[Id Linea]', 'IdLinea', 'COLUMN';
EXEC sp_rename 'RECORRIDO.[Tipo(IDA/VUELTA)]', 'TipoRecorrido', 'COLUMN';
GO

EXEC sp_rename 'RECORRIDO_PARADA.[Id Recorrido]', 'IdRecorrido', 'COLUMN';
EXEC sp_rename 'RECORRIDO_PARADA.[Id Parada]', 'IdParada', 'COLUMN';
GO

EXEC sp_rename 'CHOFER.[Id Chofer]', 'IdChofer', 'COLUMN';
EXEC sp_rename 'CHOFER.[Id Linea]', 'IdLinea', 'COLUMN';
GO

EXEC sp_rename 'PARADA.[Id Parada]', 'IdParada', 'COLUMN';
EXEC sp_rename 'PARADA.[Id Linea]', 'IdLinea', 'COLUMN';
GO

EXEC sp_rename 'USUARIO.[Id Usuario]', 'IdUsuario', 'COLUMN';
EXEC sp_rename 'USUARIO.[Rol (Administrador / Inspector / Operador)]', 'Rol', 'COLUMN';
EXEC sp_rename 'USUARIO.[Contraseña]', 'Contrasena', 'COLUMN';
GO






