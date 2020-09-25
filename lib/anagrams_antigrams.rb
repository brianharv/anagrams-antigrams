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
     if @input_one.scan(/[aeiou]/).count >= 1 && @input_two.scan(/[aeiou]/).count >= 1
      puts "Can confirm, #{input_one} and #{input_two} are words."
      return true
    else
      puts "Uh oh, either #{input_one} and/or #{input_two} are NOT words "
      return false
    end
  end
  
  def is_antigram?
    if /[@input_one]/.match?(@input_two)
      puts "These two words ARE NOT antigrams"
      return false
    else
      puts "WOW! These two words ARE ANTIGRAMS, meaning they dont share any of the same letters."  
    end
  end    
end  
