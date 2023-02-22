echo "enter the name of directory"
read directory
if [[ -d "$directory" ]]
then 
    echo "directory already exist"
else
    `mkdir $directory`
fi