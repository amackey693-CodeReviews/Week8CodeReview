require('rspec')
require('w8review_logic')

describe('#Word') do 
  it("checks to see if word1 & word2 are equal to one another") do 
    words = Word.new("read","dear")
    expect(words.anagram?).to(eq("Congrats! You've found an anagram!"))
  end
  it("checks if word1 & word2 are equal to one another if they are not method returns false statement") do 
    words = Word.new("rad","dad")
    expect(words.anagram?).to(eq("One of these things are not like the other, please try again!"))
  end
  it("checks to see if word1 & word2 contain a vowel") do 
    words = Word.new("prg","rgp")
    expect(words.anagram?).to(eq("Please enter a real word!!"))
  end
  it("takes each word that is entered and turns it into lowercase letters so that user can enter capitals and method will still work") do 
    words = Word.new("gRAB","BRAG")
    expect(words.anagram?).to(eq("Congrats! You've found an anagram!"))
  end
  it("accounts for antigrams and returns statement") do 
    words = Word.new("look","star")
    expect(words.anagram?).to(eq("Well, that's not an anagram but it looks like you've found an antigram!"))
  end
  it("accounts for special characters and numbers. removes them from array") do 
    words = Word.new("Dormitory!@# ", "Dirty room123")
    expect(words.remove_special_chars("Dormitory!@#")).to(eq(["d","o","r","m","i","t","o", "r", "y"]))
  end
end 
