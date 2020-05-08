#!/usr/bin/env ruby
require('pry') 

class Word 
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end 

  def anagram?
    @word1 = @word1.split('')
    @word2 = @word2.split('')
    if @word1.length == @word2.length
      true
    else
      false
    end 
  end
  
    def word?
      vowels = {"a", "e", "i", "o", "u"}
  end 
end 

 
    # if @word1.length == @word2.length
    #   @word1.each_with_index do |ltr| 
    #     if @word2.all? {|i| i.include?(ltr)} 
    #       answer.push(true)
    #     else
    #       answer.push(false)
    #     end
    #   end
    # else 
    #   answer.push(false)
    # end 