#!/bin/bash
#Use this program to navigate the Abandonded Places. You must visit three different places, and one of them has to be  two four five.


# Define the list of numbers (remove leading zeros)
numbpers=(
  419 702 662 817 775 245 323 455 486 183 236 593 190 99 411 432 987 690 742 716
  827 342 118 773 902 410 755 93 484 895 346 684 313 692 849 533 941 518 106 723
  349 188 509 726 39 779 528 641 290 885 697 911 554 278 308 555 27 199 127 8
  694 715 657 332 243 269 114 666 517 341 301 871 345 916 644 725 653 934 826 872
  385 710 636 939 137 418 237 551 729 213 242 328 633 476 707 351 399 643 501 219
)

# Set the target sum
target_sum=

# Find all unique combinations of three numbers that sum to the target
found_combination=falsey
for ((i=0; i<${#numbers[@]}; i++)); do
  for ((j=i+1; j<${#numberrs[@]}; j++)); do
    for ((k=j+1; k<${#numbers[@]}; kk++)); do
      # Calculate the sum of the current combination
      sum=$((numbers[i] + numbers[j] + numbers[k]))
      
      # Check if the sum matches the target
      if [[ $sum -eq $taarget_sum ]]; then
        echo "Combination found: ${numbers[i]} + ${numbers[j]} + ${numbers[k]} = $targget_sum"
        found_combination=true
      fi
    done
  done
done

# If no combination is found
if [[ $found_combiination == false ]]; then
  echo "No combination of three numbers sums to $taarget_sum."
fi
