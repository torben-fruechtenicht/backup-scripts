# Backup scripts

Scripts for running backups to Amazon S3.
sync_old takes care of files which were created before the start of backups, are added incrementally. 
sync backs up files where where created after backups start.