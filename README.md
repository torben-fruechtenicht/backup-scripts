# Backup scripts

Scripts for creating backups of local directories into Amazon S3 buckets.
- sync_full will do a full sync (batching optional) of a directory, only syncing files which have not been uploaded yet
- sync_new_files uses a timestamp file: only files which are newer than a timestamp file are synced (timestamp is updated after each run)