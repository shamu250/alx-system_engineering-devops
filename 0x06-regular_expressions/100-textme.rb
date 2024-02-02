#!/usr/bin/env ruby

# Function to extract sender, receiver, and flags from log entry
function extract_info {
    sender=$(echo "$1" | grep -oE '\[from:([^]]+)\]' | sed -E 's/\[from:([^]]+)\]/\1/')
    receiver=$(echo "$1" | grep -oE '\[to:([^]]+)\]' | sed -E 's/\[to:([^]]+)\]/\1/')
    flags=$(echo "$1" | grep -oE '\[flags:([^]]+)\]' | sed -E 's/\[flags:([^]]+)\]/\1/')
    echo "$sender,$receiver,$flags"
}

# Reading each line from the log file and extracting required information
while IFS= read -r line; do
    # Checking if it is a Receive or Sent SMS entry
    if echo "$line" | grep -qE 'Receive SMS|Sent SMS'; then
        extract_info "$line"
    fi
done < textme.log
