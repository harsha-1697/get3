echo "enter a number to be entered"
read str
len= `echo $str | wc -c` 
len=`expr $len - 1`
i=1
j=`expr $len / 2`
while test $i -le $j
do
k=`echo $str | cut -c $i`
l=`echo $str | cut -c $len`
if test $k != $l
then 
echo "$str is not palindrome"
exit
fi
i= `expr $i + 1`
len= `expr $len - 1`
done
echo "$str is palindrome"

