#!/bin/bash

# Source the config file
source submission_reminder_app/config/config.env

# Start the reminder application
bash submission_reminder_app/scripts/reminder.sh

echo "Reminder app started."
