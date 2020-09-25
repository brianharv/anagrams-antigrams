require('pry')

class Checker
  attr_accessor(:input_one, :input_two)

  def initialize (input_one, input_two)
    @input_one = input_one
    @input_two = input_two
  end

  def is_word_anagram?
    array_one = []
    array_two = []
    word_array_one = @input_one.downcase.split(/\W+/).sort_by(&:length)
    word_array_one.each do |word|
      array_one.push(word.split('').sort.join)
    end
    array_one

    word_array_two = @input_two.downcase.split(/\W+/).sort_by(&:length)
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

  def is_word?
    if @input_one.scan(/[aeiou]/).count >= 1 && @input_two.scan(/[aeiou]/).count >= 1
      puts "Can confirm, '#{input_one}' and '#{input_two}' are using words."
      return true
    else
      puts "Uh oh, either '#{input_one}' and/or '#{input_two}' do NOT contain words "
      return false
    end
  end
  
  def is_antigram?
    if /["#{@input_one}"]/.match("#{@input_two}")
      puts "These two words are NOT antigrams"
      return false
      else
      puts "WOW! These two words are ANTIGRAMS, meaning they dont share any of the same letters." 
      return true
    end
  end
end  
