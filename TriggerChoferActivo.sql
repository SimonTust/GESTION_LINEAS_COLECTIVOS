USE GESTION_LINEAS_COLECTIVOS;
GO

CREATE TRIGGER TRG_ValidarActivoChofer
ON CHOFER
AFTER UPDATE
AS
BEGIN
    -- Forzar que Activo solo tenga 'S' o 'N'
    UPDATE CHOFER
    SET Activo = 'N'
    FROM CHOFER c
    INNER JOIN inserted i ON c.IdChofer = i.IdChofer
    WHERE i.Activo NOT IN ('S', 'N');
END
GO

/*SELECT IdChofer, NombreApellido, Activo FROM CHOFER WHERE IdChofer = 1;


UPDATE CHOFER
SET Activo = 'X'
WHERE IdChofer = 1;

SELECT IdChofer, NombreApellido, Activo FROM CHOFER WHERE IdChofer = 1; 

(Prueba para comprobar capacidad del trigger) */



