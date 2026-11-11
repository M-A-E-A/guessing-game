#!/usr/bin/env bash

# Guessing Game: count the files in the current directory.

count_files() {
    find . -maxdepth 1 -type f | wc -l
}

correct_count=$(count_files)

echo "Welcome to the Guessing Game!"
echo "How many files are in the current directory?"

while true; do
    read -r -p "Enter your guess: " guess

    if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
        echo "Please enter a non-negative whole number."
        continue
    fi

    if (( guess < correct_count )); then
        echo "Your guess is too low. Try again."
    elif (( guess > correct_count )); then
        echo "Your guess is too high. Try again."
    else
        echo "Congratulations! You guessed the correct number of files."
        break
    fi
done
