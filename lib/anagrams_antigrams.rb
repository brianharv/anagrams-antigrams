require('pry')

class Checker
  include Comparable
  attr_accessor(:input_one, :input_two)

  def initialize(input_one, input_two)
    @input_one = input_one
    @input_two = input_two
    @word_array = [input_one, input_two]
  end

  def is_anagram?
    @word_array.each do |word|
      letter_check = word.split('').sort.join
        if letter_check[0] == letter_check[1]
          return "Yes! \n #{input_one} and #{input_two} are anagrams!"
        else
          return "I'm sorry, #{input_one} and #{input_two} are not anagrams"
        end  
    end  
  end
  
  
end  