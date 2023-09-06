#!/usr/bin/env ruby

# Regex pattern to extract sender, receiver, and flags from the log message
pattern = /\[from:([^[\]]+)\] \[to:([^[\]]+)\] \[flags:([^[\]]+)\]/

# Read each line of the log file
ARGF.each do |line|
  match_data = line.match(pattern)

  # If the line matches the pattern, extract and print the information
  if match_data
    sender = match_data[1]
    receiver = match_data[2]
    flags = match_data[3]
    puts "#{sender},#{receiver},#{flags}"
  end
end

