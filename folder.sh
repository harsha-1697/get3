echo "enter the name of folder"
read d
ls $d
cd $d
ls -1 | while read folder
do
    files=` ls $folder | wc -l `
    if [ $files -eq 0 ] ; then
       rmdir $folder
       echo "zero-sized folders are succesfully deleted"
    fi
done
ls $folder
