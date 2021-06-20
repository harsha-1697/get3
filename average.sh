echo "Enter the size n:"
read n
sum=0;
echo "Enter numbers:"
for((i=1;i<=$n;i++))
do
read num
sum=$((sum+num))
sleep 1
done
avg=$(echo $sum / $n | bc -l)
echo "average of number is: "$avg
