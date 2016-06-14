-- This routine writes out GRANT EXECUTE statements you can then run
SELECT 'GRANT EXECUTE ON ' + NAME + ' TO mylogin'
FROM SYSOBJECTS
WHERE TYPE = 'P'
AND LEFT(NAME,2) <> 'sp'
AND LEFT(NAME,2) <> 'dt'