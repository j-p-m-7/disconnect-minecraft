#!/bin/bash
xdotool key Escape  # Press ESC to open the pause menu
sleep 0.01  # Wait for menu to appear
xdotool mousemove 1248 630  # Move mouse to "Disconnect" button
sleep 0.01  # Small delay to ensure movement registers
xdotool click 1  # Left-click to disconnect

