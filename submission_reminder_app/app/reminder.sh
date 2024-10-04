#!/bin/bash

# Source the functions file
source submission_reminder_app/scripts/functions.sh

# Read the submissions.txt file and check each submission
while IFS=',' read -r student_name course submission_date; do
  echo "Processing submission for $student_name..."
  print_submission "$student_name" "$course" "$submission_date"
  check_due_date "$submission_date"
  echo "-----------------------------"
done < submissions.txt
