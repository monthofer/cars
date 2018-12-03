#! /bin/bash
# cars.sh
# Sarah Monthofer
continue="True"
while [ $continue = "True" ]
do 
echo "A add a car"
echo "L list the cars"
echo "Q quit the program"
read choice
case "$choice" in
	"a") 
	echo "Please enter the year :"
        read year
        echo "Enter the make :"
        read make
        echo "What is the model :"
        read  model
	echo "$year:$make:$model" >> My_old_cars ;;
	"l")
	sort My_old_cars ;;
	"q")
	continue="False"	
	echo "Goodbye" ;;
esac
done

