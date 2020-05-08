require('rspec')
require('w8review_logic')

describe('#Word') do 
  it("takes in one word from the user and splits it into an array") do 
    words = Word.new()
    expect(words.anagram?("read")).to(eq(['r', 'e', 'a', 'd']))
  end
end 