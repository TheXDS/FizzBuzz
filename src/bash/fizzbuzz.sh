#! /bin/bash
for j in {1..99}
do
    output=""
    if [ $(($j % 3)) -eq 0 ]
    then
        addp=Fizz
        output=$output$addp
    fi
    if [ $(($j % 5)) -eq 0 ]
    then
        addp=Buzz
        output=$output$addp
    fi
    if [ -z $output ]
    then
        output=$j
    fi
    echo $output
done
