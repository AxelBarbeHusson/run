hours=`date +%H%M%S`
update='235959'
for ((; ;))
do
   echo "It\'s not update"
   sleep 1
   if ($hours === $update)
   then
	git pull
   fi
done
