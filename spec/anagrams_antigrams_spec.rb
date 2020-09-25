require('rspec')
require('anagrams_antigrams')


describe('Checker') do
  
  describe('Checker#is_anagram') do
    it('checks to see if user input is an anagram or not') do
      new_checker = Checker.new("odor", "door")
      expect(new_checker.is_anagram?()).to(eq(true))
    end
  end
  
  describe('Checker#is_anagram') do
    it('ignores letter case when checking two words') do
      new_checker = Checker.new("Listen", "Silent")
      expect(new_checker.is_anagram?()).to(eq(true))
    end
  end

  describe('Checker#is_word') do
    it('checks to see if inputs are words') do
      new_checker = Checker.new("Listen", "Silent")
      expect(new_checker.is_word?()).to(eq(true))
    end
  end
  
end