## SQL Script To Restore Database Backup Using File

This script can be used as an ad-hoc script or inside your CI job to restore databases.

### How To Use?

1) Replace `ts_cm` with your database name.
2) Replace `D:\x_cm.bak` with the location of your backup file. Note, this backup file should be present on the database server itself and not on your local machine. If you don't know how to do that, click [here!](https://github.com/knoldus/powershell-script-to-map-remote-drive)

### How To Execute?

1) Install sqlcmd.
2) Run:

```
sqlcmd -S "<database_server_name>" -U "database_username" -P "database_password" -i "restore.sql"
```

### Troubleshooting

In some scenarios, it might be possible that your backup file was made from a differently named database. In that case, you need to find our the name and replace it with `ts_cm` on line no. 5 and 6 only.