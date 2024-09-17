integer=21

if [[ $integer < 10 ]]
then
  echo $integer is less than 10
elif [[ $integer > 20 ]]
then
  echo $integer is greater than 20
else
  echo $integer is between 10 and 20
fi