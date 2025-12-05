Use GESTION_LINEAS_COLECTIVOS;
GO

BACKUP DATABASE GESTION_LINEAS_COLECTIVOS
TO DISK = '/var/opt/mssql/backup/gestion_lineas.bak'
WITH FORMAT,
     NAME = 'Backup completo de gestion_lineas_colectivos';

