RESTORE DATABASE myDatabase
FROM DISK = 'D:\myDatabase.bak'
WITH REPLACE,
MOVE ‘abc_db' TO 'D:\abc_db.mdf',
MOVE 'abc_db_Log' TO 'D:\abc_db_Log.ldf'
GO

--If you need to check what logical names are, run the following:
--RESTORE FILELISTONLY
--FROM DISK = 'D:\myDatabase.bak'