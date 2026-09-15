#!/bin/bash
# Simple Interest Calculator
# Computes simple interest based on user input: principal, interest rate, and
# time period.
#
# Formula:
#   Simple Interest (SI) = (P * R * T) / 100
#   Total Amount         = P + SI
 
echo "Simple Interest Calculator"
 
# Read the input fields from the user
read -p "Enter the principal amount (P): " principal
read -p "Enter the annual interest rate in % (R): " rate
read -p "Enter the time period in years (T): " time
 
# Calculate the simple interest and total amount (bc handles decimals)
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
total_amount=$(echo "scale=2; $principal + $simple_interest" | bc)
 
# Display the results
echo "Simple Interest = $simple_interest"
echo "Total Amount    = $total_amount"
