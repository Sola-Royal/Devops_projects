#!/bin/bash

# Initialize a counter variable
counter=1

# Start the while loop
while [ $counter -le 5 ]
do
  echo "This is iteration number $counter"
  # Increment the counter
  ((counter++))
done

echo "The loop is finished."