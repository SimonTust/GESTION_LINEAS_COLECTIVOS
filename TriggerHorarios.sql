Use GESTION_LINEAS_COLECTIVOS;
GO

CREATE TRIGGER trg_ValidarHorasServicio
ON SERVICIO
AFTER INSERT
AS
BEGIN
    -- Verifica que la hora de fin sea mayor que la hora de inicio
    IF EXISTS (
        SELECT 1
        FROM inserted i
        WHERE i.[HoraFin] <= i.[HoraInicio]
    )
    BEGIN
        RAISERROR('La Hora Fin debe ser mayor que la Hora Inicio.', 16, 1);
        ROLLBACK TRANSACTION;
        RETURN;
    END;
END;
GO

/* --PRUEBA VALIDA--

INSERT INTO SERVICIO (IdLinea, IdUnidad, IdChofer, Fecha, HoraInicio, HoraFin, Observaciones)
VALUES (1, 1, 1, GETDATE(), '08:00', '10:00', 'Servicio correcto');

--PRUEBA ERROR--

INSERT INTO SERVICIO (IdLinea, IdUnidad, IdChofer, Fecha, HoraInicio, HoraFin, Observaciones)
VALUES (1, 1, 1, GETDATE(), '10:00', '09:00', 'Debe fallar');





