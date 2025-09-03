#!/bin/bash
# Check If Else
read -p "Enter the Marks for subject: " Value

# ensure range 0-100
if (( Value < 0 || Value > 100 )); then
  echo "Invalid marks: must be between 0 and 100."
  exit 2
fi

# fail / pass and grade
if (( Value < 50 )); then
  echo "Failed"
  exit 1
fi

if (( Value <= 59 )); then
  echo "D Grade"
elif (( Value <= 69 )); then
  echo "C Grade"
elif (( Value <= 79 )); then
  echo "B Grade"
elif (( Value <= 89 )); then
  echo "A Grade"
else
  echo "A+ Grade"
fi

exit 0
...existing code...