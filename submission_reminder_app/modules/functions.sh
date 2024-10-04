#!/bin/bash

# Function to check if the submission is due soon
check_due_date() {
  submission_date=$1
  current_date=$(date +%Y-%m-%d)

  if [[ "$submission_date" < "$current_date" ]]; then
    echo "Submission is overdue!"
  else
    echo "Submission is on time."
  fi
}

# Function to format output for a student submission
print_submission() {
  student_name=$1
  course=$2
  date=$3

  echo "Student: $student_name"
  echo "Course: $course"
  echo "Submission Date: $date"
}
