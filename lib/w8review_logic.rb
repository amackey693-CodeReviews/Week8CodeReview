#!/usr/bin/env ruby
require('pry') 

class Word 
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end 

  def anagram?
    @word1 = @word1.split('')
    @word1
  end 

  

end 
