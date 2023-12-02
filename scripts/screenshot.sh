#!/bin/bash

# Create a timestamped filename
filename="Screenshot_$(date '+%Y-%m-%d_%H-%M-%S').png"

# Use slurp to select a region and grim to take a screenshot of that region
slurp | grim -g - ~/Pictures/$filename

# Notify that the screenshot has been taken
notify-send "Screenshot taken" "Saved as $filename"

