require('pry')

class Checker
  attr_accessor(:input_one, :input_two)

  def initialize (input_one, input_two)
    @input_one = input_one
    @input_two = input_two
  end

  def is_anagram?
    word_one = @input_one.downcase.split('').sort.join
    word_two = @input_two.downcase.split('').sort.join
      if word_one == word_two
        puts "Yes! \n#{input_one} and #{input_two} are anagrams!"
        return true
      else
        puts "I'm sorry, #{input_one} and #{input_two} are not anagrams"
        return false
      end 
  end

  def is_word?
     if @input_one.scan(/[aeiou]/).count >= 1
      puts "Your first input is a word."
      return true
    else
      puts "I'm sorry, your first input is not a word." 
      return false
    end
  end     
end  

 

# /[aeiou]/.match?(@input_two)  
# if true
#   return "Your second input is a word."
# else
#   return "I'm sorry, your second input is not a word." 
# end