echo "enter the name of file :"
read fname
if [[ -f "$fname" ]]
then 
    echo "File already exist with this name"
else
    cat > $fname
fi