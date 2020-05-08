#!/usr/bin/env ruby
require('pry') 

class Word 
  def initialize(word1, word2)
    @word1 = word1.downcase.split('')
    @word2 = word2.downcase.split('')
  end 

  def anagram?
    compare = @word1 - @word2
    vowels = ["a", "e", "i", "o", "u", "y"]
    
    if compare == []
      if @word1.any? {|i| vowels.include?(i)} && @word2.any? {|i| vowels.include?(i)} 
        return "Congrats! You've found an anagram!"
      else
        return "Please enter a real word!!"
      end
    elsif (@word1.any? {|i| @word2.include?(i)}) == false
      return "Well, that's not an anagram but it looks like you've found an antigram!"
    else 
      return "One of these things are not like the other, please try again!"
    end
  end
end