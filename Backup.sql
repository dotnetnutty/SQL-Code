DECLARE @fname NVARCHAR(100)
SELECT @fname = 'D:\MyBackup-' + CONVERT(varchar,getdate(),112) + '.bak'

BACKUP DATABASE myDatabase
TO DISK = @fname
WITH FORMAT,
NAME = 'myDatabase-Full Database Backup',
CHECKSUM
SELECT 'Backed up to ' + @fname