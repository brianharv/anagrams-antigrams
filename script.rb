#!/usr/bin/env ruby
require './lib/anagrams_antigrams.rb'

puts "ANAGRAM AND ANTIGRAM CHECKER"
#new_checker = Checker.new("", "")
puts "Hello! \n Please enter a word or phrase (max 3 words):"
input_one = gets.chomp
puts "Thank you! \n Please enter another word or phrase (max 3 words)."
input_two = gets.chomp
puts "Excellent, let's make sure these are words."
new_checker = Checker.new(input_one, input_two)

if new_checker.is_word?()
  puts "Great! Now let's see if there are any ANAGRAMS here..."
  new_checker.is_word_anagram?()
  puts "Let's see if there are any ANTIGRAMS here..."
  new_checker.is_antigram?()
  puts "Alright...I believe my work here is done."
elsif 
  puts "Uh Oh...Something went wrong."
end  