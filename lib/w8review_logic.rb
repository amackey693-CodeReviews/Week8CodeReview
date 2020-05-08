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
      @word1.each_with_index do |ltr| 
        if @word2.all? {|i| i.include?(ltr) }
          answer = true 
          binding.pry
        else 
          answer = false
        end 
      end
    else 
      answer = false
    end 
    answer
  end 
end 
