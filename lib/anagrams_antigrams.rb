require('pry')

class Checker
  attr_reader(:word_array)
  attr_accessor(:input_one, :input_two)

  def initialize (input_one, input_two)
    @input_one = input_one
    @input_two = input_two
  end

  def is_anagram?
    word_one = @input_one.split('').sort.join
    word_two = @input_two.split('').sort.join
      if word_one.casecmp?(word_two)
        puts "Yes! \n#{input_one} and #{input_two} are anagrams!"
        return true
      else
        puts "I'm sorry, #{input_one} and #{input_two} are not anagrams"
        return false
      end 
  end


end  

 

#