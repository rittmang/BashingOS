echo "Enter 1st string:"
read str1
echo "Enter 2nd string:"
read str2

if [ $str1 == $str2 ]
then
	echo $str1" is equal to "$str2
else
	echo $str1" is not equal to "$str2
fi
