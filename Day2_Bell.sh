#!/bin/bash

# Day 2 - Variables, User Input, and If Statement

clear
echo "🔮 Welcome to Day 2 of your Bash journey, $USER!"

# Simulate typing effect
sleep 1
echo
read -p "✨ What's your name, dreamer? " username

# Store multiple prophecy verses
verses=(
  "Jeremiah 29:11 — 'For I know the plans I have for you...'"
  "Psalm 23:1 — 'The Lord is my shepherd, I shall not want.'"
  "Isaiah 60:1 — 'Arise, shine, for your light has come!'"
  "Psalm 37:23 — 'Your steps are ordered by the Lord.'"
)
  
# Display a prophetic verse
echo "📖 Word for you today: $random_verse"

# Bell alert
echo -e "\a"
sleep 1

# Closing line with sound
echo "💌 Remember: 'In quietness and trust is your strength.' (Isaiah 30:15)"

# Pick a random verse
random_verse=${verses[$RANDOM % ${#verses[@]}]}

# Respond based on name
echo
if [[ "${username,,}" == "gabriel" ]]; then
  echo "👑 Hey Prophet Gabriel! You carry fire 🔥"
else
  echo "🌱 Welcome, $username! Stay expectant. Heaven is watching."
fi

# Display a prophetic verse
echo "📖 Word for you today: $random_verse"

# Log activity to journal
echo "$username logged in on $(date)" >> journal.txt
echo "📓 Activity logged in journal.txt"

# Extra touch
echo
echo "💌 Remember: 'In quietness and trust is your strength.' (Isaiah 30:15)"


