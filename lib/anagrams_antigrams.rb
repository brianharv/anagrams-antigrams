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
    array_one = []
    array_two = []
    word_array_one.each do |word|
      array_one.push(word.split('').sort.join)
    end
    array_one

    word_array_two.each do |word|
      array_two.push(word.split('').sort.join)
    end
    array_two

    if array_one[0] == array_two[0] || array_one[1] == array_two[1] || array_one[2] == array_two[2] || array_one[3] == array_two[3]
      puts "Yes! \n'#{input_one}' and '#{input_two}' contain anagrams!"
      return true
    else
      puts "I'm sorry, '#{input_one}' and '#{input_two}' do not provide anagrams"
      return false
    end 
  end
  
  def is_antigram?
    array_one = []
    array_two = []
    index = 0
    word_array_one.each do |word|
      array_one.push(word.split('').sort.join)
    end
    array_one

    word_array_two.each do |word|
      array_two.push(word.split('').sort.join)
    end
    array_two

    antigram_array = []
    while index < array_two.length
      array_one.each do |word|
        if /["#{array_one[index]}"]/.match(array_two[index]) 
          puts "Not Antigram"
          antigram_array.push(false)
        else
          puts "ANTIGRAM"
          antigram_array.push(true)
        end
      end  
    index += 1
    return antigram_array
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
