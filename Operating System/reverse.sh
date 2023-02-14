echo "Enter Name"
read name
len=${#name}
for((i=$len;i>=0;i--))
do
    sub=$sub${name:i:1}
done
echo $sub
