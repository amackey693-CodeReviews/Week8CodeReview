require('rspec')
require('w8review_logic')

describe('#Word') do 
  it("checks to see if word1 & word2 are equal to one another") do 
    words = Word.new("read","dear")
    expect(words.anagram?).to(eq(true))
  end
  it("checks if word1 & word2 are equal to one another if they are not resturns false") do 
    words = Word.new("rad","dad")
    expect(words.anagram?).to(eq(false))
  end
  it("checks to see if word1 & word2 contain a vowel") do 
    words = Word.new("read","dear")
    expect(words.anagram?).to(eq(true))
  end
  # it("checks to see if word1 & word2 do not contain the same letters method returns error statement") do 
  #   words = Word.new("rpg","slk")
  #   expect(words.anagram?).to(eq("One of these things are not like the other, please try again!"))
  # end
  # it("checks to see if the two items contain the same letters") do 
  #   words = Word.new("read","dear")
  #   expect(words.anagram?).to(eq("Congratulations! You've found a anagram!"))
  # end
end 