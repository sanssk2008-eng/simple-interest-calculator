#!/bin/bash

# Simple Interest Calculator
# Formula: SI = (Principal * Rate * Time) / 100

echo "======================================="
echo "       Simple Interest Calculator      "
echo "======================================="
echo ""

# Get user input
read -p "Enter the Principal amount (P): " principal
read -p "Enter the Rate of Interest (R) in % per annum: " rate
read -p "Enter the Time Period (T) in years: " time

# Validate inputs are not empty
if [ -z "$principal" ] || [ -z "$rate" ] || [ -z "$time" ]; then
    echo ""
    echo "Error: All fields are required. Please enter valid values."
    exit 1
fi

# Calculate Simple Interest
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Calculate Total Amount
total_amount=$(echo "scale=2; $principal + $simple_interest" | bc)

# Display Results
echo ""
echo "======================================="
echo "              Results                  "
echo "======================================="
echo "Principal Amount  : $principal"
echo "Rate of Interest  : $rate %"
echo "Time Period       : $time years"
echo "---------------------------------------"
echo "Simple Interest   : $simple_interest"
echo "Total Amount      : $total_amount"
echo "======================================="
