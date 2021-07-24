dd if=/dev/nvme0n1 | gzip -4 - | ssh pi@192.168.0.111 dd of=/backups/image.gz
