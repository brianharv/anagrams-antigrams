require('rspec')
require('anagrams_antigrams')


describe('Checker') do
  
  describe('Checker#is_anagram') do
    it('checks to see if user input is an anagram or not') do
      new_checker = Checker.new("door", "odor")
      expect(new_checker.is_anagram?()).to(eq("true"))
    end
  end


end