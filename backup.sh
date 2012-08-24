#automated backup script with password. Alison Perez <perez.alison@gmail.com>
#should be kept in a non-universal directory (not 0777) /var/tmp

mysqldump -u root -proot chits > ~/backup/rhuname.$(date +%Y%m%d).sql
cd ~/backup
zip -rP testingpassword rhuname.$(date +%Y%m%d).zip rhuname.$(date +%Y%m%d).sql
cp -f rhuname.$(date +%Y%m%d).zip /media/MEMORY\ CARD/
rm rhuname.$(date +%Y%m%d).sql
echo 'Backup successful!';
nautilus ~/backup
