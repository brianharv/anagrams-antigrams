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
    if @input_letters_one.chars.sort.join == @input_letters_two.chars.sort.join
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
      puts check_two
      puts check_one
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
  # def is_antigram?
  #   array_one = []
  #   array_two = []
  #   index = 0
  #   word_array_one.each do |word|
  #     array_one.push(word.split('').sort.join)
  #   end
  #   array_one

  #   word_array_two.each do |word|
  #     array_two.push(word.split('').sort.join)
  #   end
  #   array_two

  #   antigram_array = []
  #   while index < array_two.length
  #     array_one.each do |word|
  #       if /["#{array_one[index]}"]/.match(array_two[index]) 
  #         puts "Not Antigram"
  #         antigram_array.push(false)
  #       else
  #         puts "ANTIGRAM"
  #         antigram_array.push(true)
  #       end
  #     end  
  #   index += 1
  #   return antigram_array
  #   end        
  # end

end  
