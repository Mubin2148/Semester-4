i=1
while [ $i -le 10 ]
do
hour=`date +%H`
if [[ $hour -lt 12 ]]
then 
    echo "Good Morning!"
elif [ $hour -lt 16 -a $hour -ge 12 ]
then
    echo "Good Afternoon"
else
    echo "Good Evening"
fi
sleep 10
done
