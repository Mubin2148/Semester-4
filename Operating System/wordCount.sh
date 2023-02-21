echo "Enter the name of file"
read file
lineCount=`wc -l $file`
wordsCount=`wc -w $file`
charCount=`wc -c $file`
echo "Line : $lineCount"
echo "words : $wordsCount"
echo "character : $charCount"
