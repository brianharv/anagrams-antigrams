#!/usr/bin/env ruby
require './lib/anagrams_antigrams.rb'

puts "ANAGRAM AND ANTIGRAM CHECKER"
puts "Hello! \n Please enter a word or phrase (max 3 words):"
input_one = gets.chomp
puts "Thank you! \n Please enter another word or phrase (max 3 words)."
input_two = gets.chomp
new_checker = Checker.new(input_one, input_two)

if new_checker.is_word?
else
  puts "That's not a word"
end
if new_checker.is_word_anagram?
  puts "That's an ANAGRAM!"
else
  puts "That's NOT an ANAGRAM!" 
end
if new_checker.is_antigram?  
  puts "Hey that's actually an ANTIGRAM!"
else
  puts "That not an antigram..."
end       

