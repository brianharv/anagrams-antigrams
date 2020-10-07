require('rspec')
require('anagrams_antigrams')


describe('Checker') do


  describe('Checker#is_word') do
    it('checks to see if inputs are words') do
      new_checker = Checker.new("Listen", "Silent")
      expect(new_checker.is_word?()).to(eq(true))
    end
  end

  describe('Checker#is_word') do
    it('checks if all inputs in phrases are words') do
      new_checker = Checker.new("ghdskl", "sdjerh")
      expect(new_checker.is_word?()).to(eq(false))
    end
  end
  describe('Checker#is_word') do
    it('checks if all inputs in phrases are words') do
      new_checker = Checker.new("chord", "sdjrh")
      expect(new_checker.is_word?()).to(eq(false))
    end
  end     

  describe('Checker#is_word_anagram') do
    it('checks to see if user input is an anagram or not') do
      new_checker = Checker.new("odor", "door")
      expect(new_checker.is_word_anagram?()).to(eq(true))
    end
  end
  
  describe('Checker#is_word_anagram') do
    it('ignores letter case when checking two words') do
      new_checker = Checker.new("Listen", "Silent")
      expect(new_checker.is_word_anagram?()).to(eq(true))
    end
  end

  describe('Checker#is_word_anagram') do
    it('checks to make sure inputs are the same length') do
      new_checker = Checker.new("Listening", "Silent")
      expect(new_checker.is_word_anagram?()).to(eq(false))
    end
  end

  describe('Checker#is_antigram') do
    it('checks to see if inputs are antigrams - meaning they share none of the same letters') do
      new_checker = Checker.new("tootie", "mall")
      expect(new_checker.is_antigram?()).to(eq(true))
    end
  end

  describe('Checker#is_antigram') do
    it('checks to see if multi word inputs are antigrams') do
      new_checker = Checker.new("Listen to me", "You aren't nice") 
      expect(new_checker.is_antigram?()).to(eq(false)) 
    end
  end    
  
  # describe('Checker#is_word_anagram') do
  #   it('checks to see if two phrases contain anagrams') do
  #     new_checker = Checker.new("Listen to me", "You're silent")
  #     expect(new_checker.is_word_anagram?()).to(eq(false))
  #   end
  # end    
end