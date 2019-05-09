#/bin/bash
#usage: bash add.sh

function add()
{
	result=`expr $1 + $2`
	echo "Sum="$result
}
function diff()
{
	result=`expr $1 - $2`
	echo "Difference="$result
}
function mul()
{
	result=`expr $1 \* $2`
	echo "Product="$result
}
function div()
{
	result=`echo "scale=2;$1 / $2" | bc`
	echo "Result="$result
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
        ;;
        2) echo "Enter the first number:"
           read num1
           echo "Enter the second number"
           read num2
           diff $num1 $num2
        ;;
        3) echo "Enter the first number:"
           read num1
           echo "Enter the second number"
           read num2
	   mul $num1 $num2
        ;;
        4)echo "Enter the first number:"
           read num1
           echo "Enter the second number"
           read num2
           div $num1 $num2
	;;
	5) exit
	;;
	*) echo -e "Unknown choice\n"
esac
done
