hours=`date + %H%M%`
update='143500'

for ((; ;))
do
 if($hours ==$update)
 git pull
 reboot
done
