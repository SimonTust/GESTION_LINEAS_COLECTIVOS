Use GESTION_LINEAS_COLECTIVOS;
Go
CREATE PROCEDURE ReporteServiciosPorLinea
    @IdLinea INT
AS
BEGIN
    SELECT 
        S.IdServicio,
        L.Nombre AS NombreLinea,
        U.Patente AS Unidad,
        C.NombreApellido AS Chofer,
        S.Fecha,
        S.HoraInicio,
        S.HoraFin,
        S.Observaciones
    FROM SERVICIO S
    INNER JOIN LINEA L ON S.IdLinea = L.IdLinea
    INNER JOIN UNIDAD U ON S.IdUnidad = U.IdUnidad
    INNER JOIN CHOFER C ON S.IdChofer = C.IdChofer
    WHERE S.IdLinea = @IdLinea
    ORDER BY S.Fecha, S.HoraInicio;
END;

--EJECUCION--

/* 
EXEC ReporteServiciosPorLinea 1;
*/