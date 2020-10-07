require('pry')

class Checker
  attr_accessor(:input_one, :input_two, :input_letters_one, :input_letters_two)

  def initialize (input_one, input_two)
    @input_one = input_one
    @input_two = input_two
    @input_letters_one = @input_one.downcase.gsub(/[^a-z]/, '')
    @input_letters_two = @input_two.downcase.gsub(/[^a-z]/, '')
  end

  def is_word_anagram?
    if (@input_letters_one.chars.sort.join == @input_letters_two.chars.sort.join) && (@input_letters_one.length == @input_letters_two.length)
      return true
    else
      false
    end  
  end 

  def is_word?
    check_one = @input_letters_one.scan(/[aeiou]/).count
      if check_one == 0
        puts "Uh oh, '#{input_one}' contains an entry that is not a word."
        return false
      end       
    check_one

    check_two = @input_letters_two.scan(/[aeiou]/).count
      if check_two == 0
        puts "Uh oh, '#{input_two}' contains an entry that is not a word."
        return false
      end     
    check_two  

    if check_one > 0 && check_two > 0
      puts "Can confirm, '#{input_one}' and '#{input_two}' are using words."
      return true
    else
      return false
    end
  end

  def is_antigram?
    anti_check_one = @input_letters_one
    anti_check_two = @input_letters_two

    if /["#{anti_check_one}"]/.match(anti_check_two)
      return false
    else
      return true
    end    
  end
end  
