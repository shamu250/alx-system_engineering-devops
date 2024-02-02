#!/usr/bin/env ruby
# Save this script as 1-repetition_match.rb

def match_repetition?(input)
    # Regular expression to match the specified pattern
    regex = /^h(b+)(t)\1\2\1$/
  
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
    match_repetition?(input)
  end
  