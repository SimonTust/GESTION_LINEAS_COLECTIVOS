

/* CARGA DE DATOS */


Use GESTION_LINEAS_COLECTIVOS;

GO

INSERT INTO LINEA (Nombre, Numero) VALUES 
('Linea 101', 101),
('Linea 102', 102),
('Linea 201', 201),
('Linea 202', 202),
('Linea 301', 301),
('Linea 302', 302);

INSERT INTO UNIDAD (IdLinea, Patente, Modelo, [Año], Capacidad, Estado) VALUES
(1, 'ABC123', 'Mercedes Sprinter', '2015-01-01', 40, 'Activo'),
(2, 'XYZ789', 'Volvo 7700', '2018-01-01', 50, 'Activo');


INSERT INTO CHOFER (IdLinea, Dni, NombreApellido, Licencia, FechaIngreso, Activo) VALUES
(1, 12345678, 'Juan Perez', 'A123456', '2020-03-01', 'S'),
(2, 87654321, 'Maria Lopez', 'B654321', '2019-07-01', 'S');

INSERT INTO PARADA (IdLinea, Nombre, Direccion, Longitud) VALUES
(1, 'Parada Central', 'Calle Falsa 123', 123.456789),
(1, 'Parada Norte', 'Av. Siempre Viva 742', 123.456790),
(2, 'Parada Este', 'Av. Libertad 55', 223.456789);


INSERT INTO RECORRIDO (IdLinea, TipoRecorrido, Descripcion, DuracionEstimada) VALUES
(1, 'IDA', 'Centro -> Norte', '01:00:00'),
(1, 'VUELTA', 'Norte -> Centro', '01:00:00'),
(2, 'IDA', 'Centro -> Este', '00:50:00'),
(2, 'VUELTA', 'Este -> Centro', '00:50:00'),
(3, 'IDA', 'Centro -> Sur', '01:10:00'),
(3, 'VUELTA', 'Sur -> Centro', '01:10:00'),
(4, 'IDA', 'Centro -> Oeste', '00:45:00'),
(4, 'VUELTA', 'Oeste -> Centro', '00:45:00'),
(5, 'IDA', 'Centro -> Norte Este', '01:20:00'),
(5, 'VUELTA', 'Norte Este -> Centro', '01:20:00'),
(6, 'IDA', 'Centro -> Sur Oeste', '01:15:00'),
(6, 'VUELTA', 'Sur Oeste -> Centro', '01:15:00');



INSERT INTO RECORRIDO_PARADA (IdRecorrido, IdParada, Orden) VALUES
(3, 5, 1);


INSERT INTO SERVICIO (IdLinea, IdUnidad, IdChofer, Fecha, HoraInicio, HoraFin, Observaciones) VALUES
(1, 1, 1, '2025-11-15', '2025-11-15 08:00', '2025-11-15 09:00', 'Normal'),
(2, 2, 2, '2025-11-15', '2025-11-15 09:00', '2025-11-15 09:45', 'Sin novedades');

INSERT INTO USUARIO (NombreUsuario, Contrasena, NombreCompleto, Email, Activo, Rol) VALUES
('admin1', 'pass123', 'Admin Uno', 'admin1@correo.com', 'S', 'Administrador'),
('operador1', 'pass456', 'Operador Uno', 'operador1@correo.com', 'S', 'Operador');



INSERT INTO LINEA (Nombre, Numero)
VALUES 
('Línea Centro', 1),
('Línea Norte', 2),
('Línea Sur', 3);


INSERT INTO UNIDAD (IdLinea, Patente, Modelo, Año, Capacidad, Estado)
VALUES
(1, 'AAA123', 'Mercedes OF-1621', '2015-01-01', 40, 'Activa'),
(1, 'BBB234', 'Mercedes OH-1721', '2017-01-01', 42, 'Activa'),
(2, 'CCC345', 'Iveco 170E', '2018-01-01', 38, 'Activa'),
(3, 'DDD456', 'Agrale MT15', '2016-01-01', 36, 'Activa');



INSERT INTO CHOFER (IdLinea, Dni, NombreApellido, Licencia, FechaIngreso, Activo)
VALUES
(1, 30500111, 'Juan Pérez', 'CNH-001', GETDATE(), 'S'),
(1, 29213455, 'Carlos Gómez', 'CNH-002', GETDATE(), 'S'),
(2, 31020333, 'Mario Ruiz', 'CNH-003', GETDATE(), 'S'),
(3, 28789900, 'Luis Fernández', 'CNH-004', GETDATE(), 'S');


INSERT INTO SERVICIO (IdLinea, IdUnidad, IdChofer, Fecha, HoraInicio, HoraFin, Observaciones)
VALUES
-- Servicios Línea 1
(1, 1, 1, '2025-01-10', '2025-01-10 06:00', '2025-01-10 08:00', 'Servicio mañana'),
(1, 2, 2, '2025-01-10', '2025-01-10 09:00', '2025-01-10 11:00', 'Servicio mediodía'),
(1, 1, 1, '2025-01-11', '2025-01-11 14:00', '2025-01-11 16:00', 'Servicio tarde'),

-- Servicios Línea 2
(2, 3, 3, '2025-01-09', '2025-01-09 07:00', '2025-01-09 09:00', 'Especial escolar'),

-- Servicios Línea 3
(3, 4, 4, '2025-01-08', '2025-01-08 13:00', '2025-01-08 15:00', 'Ronda sur');
