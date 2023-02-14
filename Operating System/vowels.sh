echo "Enter String :"
read name
echo "starting of substring :"
read s
echo "length of substring :"
read l
sub=${name:$s:$l}
count=0
len=${#sub}
for((i=0;i<$len;i++))
do
    c=${sub:i:1}
    echo $c
    if [ $c=='a' -o $c=='e' -o $c=='i' -o $c=='o' -o $c=='u' ]
        then
            count=`expr $count + 1`
    fi
done
echo $count
