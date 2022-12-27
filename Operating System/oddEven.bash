//odd even

echo "Enter the Number :"
read number 
if [ `expr $number % 2` -eq 0 ]
then 
  echo "Number is even"
  else
    echo "Number is odd"
fi