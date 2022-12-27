//largest from 2 numbers 

echo "Enter the Number 1:"
read number1
echo "Enter the Number 2:"
read number2
if [ $number1 -gt $number2 ]
then 
  echo "$number1 is largest"
  else
    echo "$number2 is largest"
fi