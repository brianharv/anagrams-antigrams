require('pry')

class Checker
  attr_accessor(:input_one, :input_two, :word_array_one, :word_array_two)

  def initialize (input_one, input_two)
    @input_one = input_one
    @input_two = input_two
    @word_array_one = @input_one.downcase.split(/\W+/).sort_by(&:length)
    @word_array_two = @input_two.downcase.split(/\W+/).sort_by(&:length)
  end

  def is_word_anagram?
    if 
      return true
    else
      false
    end    
  end      

  def is_word?
    array_one = []
    word_array_one.each do |word|
      array_one.push(word.scan(/[aeiou]/).count)
        if array_one.reduce(:+) == 0
          puts "Uh oh, '#{input_one}' contains an entry that is not a word."
          return false
        end
      end      
      array_one

    array_two = []
    word_array_two.each do |word|
      array_two.push(word.scan(/[aeiou]/).count)
        if array_two.reduce(:+) == 0
          puts "Uh oh, '#{input_two}' contains an entry that is not a word."
          return false
        end
      end      
      array_two  

    if array_one.reduce(:+) >= array_one.length && array_two.reduce(:+) >= array_two.length
      puts "Can confirm, '#{input_one}' and '#{input_two}' are using words."
      return true
    else
      #puts "Uh oh, either '#{input_one}' and/or '#{input_two}' do NOT contain words."
      return false
    end
  end  
end  
