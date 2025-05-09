#!/bin/bash

# Initialize a counter variable
count=1

# Start the until loop
until [ $count -gt 5 ]
do
  echo "Count: $count"
  ((count++))  # Increment the counter
done