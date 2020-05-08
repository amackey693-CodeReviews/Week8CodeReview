require('rspec')
require('w8review_logic')

describe('#Word') do 
  it("takes in one word from the user and splits it into an array") do 
    words = Word.new("read","dear")
    expect(words.anagram?).to(eq(['r', 'e', 'a', 'd']))
  end
  it("takes in a second word from the user and splits it into an array") do 
    words = Word.new("read", "dear")
    expect(words.word2).to(eq(['d', 'e', 'a', 'r'] ))
  end
end 