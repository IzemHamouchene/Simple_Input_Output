echo "Start test ..."

## Test 2 + 2
#Init data
outputEXE=$(./calcul.out "2" "+" "2")
Correct_Output_Array=("4")

Output_Array=($outputEXE)

for i in ${Output_Array[*]}; do
  echo $i
done

# Test Length output
if [ ${#Correct_Output_Array[@]} -ne ${#Output_Array[@]} ]; then
       echo "Expected ${#Correct_Output_Array[@]} output lines but got ${#Output_Array[@]} lines"
       exit 1
fi

# Test Array output
for (( i="0"; i<${#Correct_Output_Array[@]}; i++ ))
do
       if [ ${Correct_Output_Array[${i}]} != ${Output_Array[${i}]} ]; then
              echo "Expected '${Correct_Output_Array[${i}]}' but got : '${Output_Array[${i}]}'"
              exit 1
       fi
done
echo "Test 1 OK!"
## Test 20 + 6
#Init data
outputEXE=$(./calcul.out "13" "x" "2")
Correct_Output_Array=("26")

Output_Array=($outputEXE)

#for i in ${Output_Array[*]}; do
#  echo $i
#done

# Test Length output
if [ ${#Correct_Output_Array[@]} -ne ${#Output_Array[@]} ]; then
       echo "Expected ${#Correct_Output_Array[@]} output lines but got ${#Output_Array[@]} lines"
       exit 1
fi

# Test Array output
for (( i="0"; i<${#Correct_Output_Array[@]}; i++ ))
do
       if [ ${Correct_Output_Array[${i}]} != ${Output_Array[${i}]} ]; then
              echo "Expected '${Correct_Output_Array[${i}]}' but got : '${Output_Array[${i}]}'"
              exit 1
       fi
done
echo "Test 2 OK!"
echo "All tests passed."
exit 0
