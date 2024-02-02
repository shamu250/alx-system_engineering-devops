#!/usr/bin/env ruby
# Save this script as 0-simply_match_school.rb

def match_school?(input)
    # Regular expression to match "School" at the end of the string
    regex = /School$/
  
    # Check if the input matches the regular expression
    if input =~ regex
      puts "#{input}$"
    else
      puts "#{input}$"  # Print the input string with a "$" sign for demonstration purposes
    end
  end
  
  # Check if an argument is provided
  if ARGV.empty?
    puts "Please provide an argument."
  else
    # Get the argument from the command line
    input = ARGV[0]
  
    # Call the method to match against the regular expression
    match_school?(input)
  end
  
