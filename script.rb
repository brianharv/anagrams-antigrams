#!/usr/bin/env ruby
require './lib/anagrams_antigrams.rb'

puts "ANAGRAM AND ANTIGRAM CHECKER"
#new_checker = Checker.new("", "")
puts "Hello! \n Please enter a word or phrase (max 3 words):"
input_one = gets.chomp
puts "Thank you! \n Please enter another word or phrase (max 3 words)."
input_two = gets.chomp
new_checker = Checker.new(input_one, input_two)
puts "Excellent, let's make sure these are words."
if new_checker.is_word?()
    if true
      puts "Hey! These are words!"
    else
      puts "Uh oh...seems like you didn't enter words/"
    end 
  puts "Let's see if there are any ANAGRAMS here..."   
  new_checker.is_word_anagram?()
    if true
      puts "HEY HEY HEY, that's an ANAGRAM!"
    else
      puts "No luck today, partner. Not an ANAGRAM in sight." 
    end   
  puts "Let's check for ANTIGRAMS now/"  
  new_checker.is_antigram?()
    if true
      puts "Would you believe it? That's an ANTIGRAM!"
    else
      puts "No dice...no ANTIGRAMS here, my friend." 
    end   
  puts "Alright...I believe my work here is done."
elsif 
  puts "Uh Oh...Something went wrong."
end  