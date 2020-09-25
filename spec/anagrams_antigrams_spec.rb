require('rspec')
require('anagrams_antigrams')


describe('Checker') do
  
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

  describe('Checker#is_word') do
    it('checks to see if inputs are words') do
      new_checker = Checker.new("Listen", "Silent")
      expect(new_checker.is_word?()).to(eq(true))
    end
  end

  describe('Checker#is_antigram') do
    it('checks to see if inputs are antigrams - meaning they share none of the same letters') do
      new_checker = Checker.new("tootie", "mall")
      expect(new_checker.is_antigram?()).to(eq(true))
    end
  end
  
  describe('Checker#phrase_to_words') do
    it('checks to see if two phrases contain anagrams') do
      new_checker = Checker.new("Listen to me", "You are silent")
      expect(new_checker.phrase_to_words()).to(eq(true))
    end
  end    
end