


CREATE VIEW VistaServiciosChofer AS
SELECT 
    S.IdServicio,
    C.NombreApellido AS Chofer,
    U.Patente AS Unidad,
    L.Nombre AS Linea,
    S.Fecha,
    S.HoraInicio,
    S.HoraFin,
    S.Observaciones
FROM SERVICIO S
INNER JOIN CHOFER C ON S.IdChofer = C.IdChofer
INNER JOIN UNIDAD U ON S.IdUnidad = U.IdUnidad
INNER JOIN LINEA L ON S.IdLinea = L.IdLinea;

-- EJECUCION:

/* SELECT * 
FROM VistaServiciosChofer
ORDER BY Fecha, Chofer;
*/

GO

CREATE VIEW VistaParadasRecorrido AS
SELECT 
    R.IdRecorrido,
    R.Descripcion AS RecorridoDescripcion,
    RP.Orden AS OrdenParada,
    P.Nombre AS Parada,
    P.Direccion,
    P.Longitud
FROM RECORRIDO_PARADA RP
INNER JOIN RECORRIDO R ON RP.IdRecorrido = R.IdRecorrido
INNER JOIN PARADA P ON RP.IdParada = P.IdParada;

--EJECUCION:

/* SELECT * 
FROM VistaParadasRecorrido
ORDER BY IdRecorrido, OrdenParada;
*/


