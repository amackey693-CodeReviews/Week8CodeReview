require('rspec')
require('w8review_logic')

describe('#Word') do 
  it("takes in two words from the user and splits them into arrays") do 
    words = Word.new("read", "dear")
    expect(words.anagram?).to(eq(['r', 'e', 'a', 'd'] ['d', 'e', 'a','r']))
  end
end 