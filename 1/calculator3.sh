#/bin/bash
#usage: bash add.sh

function add()
{
	result=`expr $1 + $2`
	return $result

}
function diff()
{
	result=`expr $1 - $2`
	echo $result #cannot return negative values, hence print it here
	return $result #do in all
}
function mul()
{
	result=`expr $1 \* $2`
	return $result
}
function div()
{
	result=`echo "scale=2;$1 / $2" | bc`
	echo $result
	return $result
}


while :
do

echo -e "\n-----------------------\nArithmetic Operations:\n1: Add\n2: Sub\n3: Mul\n4: Div\n5. Exit\n"
echo "Enter your choice:"
read ch
case $ch in
        1) echo "Enter the first number:"
	   read num1
	   echo "Enter the second number"
	   read num2
	   add $num1 $num2
	   echo "Sum="$?
        ;;
        2) echo "Enter the first number:"
           read num1
           echo "Enter the second number"
           read num2
           diff $num1 $num2
	   echo "Difference="$?
        ;;
        3) echo "Enter the first number:"
           read num1
           echo "Enter the second number"
           read num2
	   mul $num1 $num2
	   echo "Product="$?
        ;;
        4)echo "Enter the first number:"
           read num1
           echo "Enter the second number"
           read num2
           div $num1 $num2
	   echo "Result=$?"
	;;
	5) exit
	;;
	*) echo -e "Unknown choice\n"
esac
done
