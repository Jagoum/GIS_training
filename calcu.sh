#!/bin/bash
welcome() {
    echo "********************************** CALCULATOR **********************************"
    echo ""
    echo ""
    echo "To to use this calculator please make sure to source it"
}
usage() {
    echo "To add, write add num1 num2"
    echo "To subtract, write subtract num1 num2"
    echo "To multiply, write multiply num1 num2"
    echo "To divide, write divide num1 num2"
    echo "To exit pless ctrl + C"

}
add() {
    sum=`expr $1 + $2`
    echo "sum of $1 and $2 = $sum"
}
subtract() {
    diff=`expr $1 - $2`
    echo "differrence of $1 and $2 = $diff"
}
multiply()  {
    mult=`expr $1 \* $2`
    echo "Multiple of $1 and $2 = $multi"
}
divide() {
    div=`expr $1 / $2`
    echo "$1 divided by $2 = $div"
}
welcome
usage