echo "Enter the file name :"
read file
echo "Enter the string :"
read string
bool=`grep $string $file`
if [ $? -eq 0 ]
then
echo "Yes String is available"
else
echo "Sorry! String is not there"
fi