//largest from 3 numbers

echo "Enter the Number 1:"
read number1
echo "Enter the Number 2:"
read number2
echo "Enter the Number 3:"
read number3
if [ $number1 -gt $number2 -a $number1 -gt $number3  ]
then 
  echo "$number1 is largest"
elif [ $number2 -gt $number1 -a $number2 -gt $number3 ]
then
  echo "$number2 is largest"
else
  echo "$number3 is largest"
fi
