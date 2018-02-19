
if mountpoint -q /mnt/backup
then
	echo "Backup err:  already mounted!"
else
	echo "Backup Start: " $(date)

	mount /dev/sdg2 /mnt/backup

	if mountpoint -q /mnt/backup
	then
		echo "Backing up..."
		rsync -saAXv --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found","/.snapshots/*","/opt/docker"} --delete  / /mnt/backup

		umount /mnt/backup
		echo "Backup done: " $(date)
	else
		echo "Backup err:  failed to mount drive"
	fi
fi

