alter database [ts_cm]
set offline with rollback immediate
RESTORE DATABASE ts_cm FROM DISK='D:\x_cm.bak'
WITH REPLACE, RECOVERY,
   MOVE 'ts_cm' TO 'D:\ts_cm.mdf',
   MOVE 'ts_cm_log' TO 'D:\ts_cm_log.ldf'
alter database [ts_cm]
set online