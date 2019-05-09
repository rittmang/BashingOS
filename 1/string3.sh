#command substitution
while :
do
	echo "Operations:"
	echo -e "\n-------------\n1: Lowercase to uppercase\n2: Uppercase to Lowercase\n3:Title Case (1 Word)\n4:Convert given characters\n5: Exit\n"
	echo "Enter your choice:"
	read ch

	case $ch in
		1) echo "Enter a string"
	   	read str1
	   	result=`echo $str1 | tr '[a-z]' '[A-Z]'`
	   	echo $result
		;;

		2) echo "Enter a string"
	  	read str1
	  	result=`echo $str1 | tr '[A-Z]' '[a-z]'`
	  	echo $result
		;;

		3) echo "Enter a string in lowercase" #capitalize first letter only
		read str1
		result=${str1^}
		echo $result
		;;
		4) echo "Enter multiple words in lowercase"
			read str1
			result=$( for i in $str1;do echo -n "${i^} ";done )
			echo $result
		;;

		5) echo "Enter a string in lowercase"
		   read str1
	   	   echo "Enter set of characters to convert to Uppercase in "$str1
		   read str2
		   result=${str1^^[$str2]}
		   echo $result
		;;

		6) exit
		;;
		*) echo -e "Unknown choice\n"
	esac
done




#------not in assignment
echo "Today's date is " `date`
