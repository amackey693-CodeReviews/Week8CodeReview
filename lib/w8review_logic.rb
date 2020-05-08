#!/usr/bin/env ruby
require('pry') 

describe('#Word') do 
  it("takes in two words from the user and splits them into arrays") do 
    expect(anagram?("read", "dear")).to(eq(['r', 'e', 'a', 'd'], ['d', 'e', 'a','r']))
  end
end 