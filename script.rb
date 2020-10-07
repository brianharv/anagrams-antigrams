#!/usr/bin/env ruby
require './lib/anagrams_antigrams.rb'

puts "ANAGRAM AND ANTIGRAM CHECKER"
puts "Hello! \n Please enter a word or phrase (max 3 words):"
input_one = gets.chomp
puts "Thank you! \n Please enter another word or phrase (max 3 words)."
input_two = gets.chomp
new_checker = Checker.new(input_one, input_two)

if !new_checker.is_word?
  puts "sorry that's not a word"
elsif new_checker.is_word_anagram?
  puts "HEY!! '#{new_checker.input_one}' and '#{new_checker.input_two}' are ANAGRAMS" 
elsif new_checker.is_antigram?
  puts "WOW! '#{new_checker.input_one}' and '#{new_checker.input_two}' are ANTIGRAMS" 
else
  puts "You'll get em next time but, '#{new_checker.input_one}' and '#{new_checker.input_two}' are not ANTIGRAMS OR ANAGRAMS"
end    

