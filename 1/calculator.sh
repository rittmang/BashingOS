#/bin/bash
#usage: bash add.sh

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
	   sum=`expr $num1 + $num2`
	   echo "Sum="$sum
        ;;
        2) echo "Enter the first number:"
           read num1
           echo "Enter the second number"
           read num2
           diff=`expr $num1 - $num2`
           echo "Diff="$diff
        ;;
        3) echo "Enter the first number:"
           read num1
           echo "Enter the second number"
           read num2
           prod=`expr $num1 \* $num2`
           echo "Product="$prod
        ;;
        4)echo "Enter the first number:"
           read num1
           echo "Enter the second number"
           read num2
           div=`echo "scale=2;$num1 / $num2" | bc`
           echo "Division="$div
	;;
	5) exit
	;;
	*) echo -e "Unknown choice\n"
esac
done
