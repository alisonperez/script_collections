mysqldump -u root -proot chits > ~/backup/rhuname.$(date +%Y%m%d).sql
zip -rP testing ./rhuname.$(date +%Y%m%d).zip rhuname.$(date +%Y%m%d).sql
echo 'Backup successful!';
nautilus ~/backup