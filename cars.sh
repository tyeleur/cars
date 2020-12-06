#! /bin/bash
# Cars
# Tyler Lewis

while [ true  ] 
do
	echo Press 1 to enter a new car.
	echo Press 2 to view list of cars.
	echo Press 3 to quit.

	read usernum

	case $usernum in

	1)
	echo "Please enter the year the car was made: " 
		read year
		echo "Please enter the make of the car: "
		read make
		echo "Please enter the model of the car: "
		read model
		cars="$year:$make:$model"
		echo "$cars" >> "My_old_cars"
		echo "Your car has been successfully added to the list."
	;;
	2)
	echo List of cars:
	sort My_old_cars
	;;
	3)
	break
	;;
	*)
		echo Enter a number 1-3.
	;;
	esac

done

echo Done.
