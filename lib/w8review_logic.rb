#!/usr/bin/env ruby
require('pry') 

class Word 
  def initialize(word1, word2)
    @word1 = remove_chars(word1)
    @word2 = remove_chars(word2)
  end 

  def remove_chars(word)
    array = word.downcase.split('')
    punctuation = ('!'...'?').to_a + [" ", "@"] 
    if punctuation.any? {|i| array.include?(i)}
      punctuation.each do |del|
        array.delete(del)
      end
    end
    array
  end
  

  def anagram?
    vowels = ["a", "e", "i", "o", "u", "y"]
  
    compare = @word1 - @word2
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