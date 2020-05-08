#!/usr/bin/env ruby
require('pry') 

class Word 
  def initialize(word1, word2)
    @word1 = word1.split('')
    @word2 = word2.split('')
  end 

  def anagram?
    answer = []
    if @word1.length == @word2.length ## checks to see that the words are the same length 
     @word1.each_with_index do |ltr| ## checks to see if word #1 conatins vowels
        if word?.include?(ltr)
          answer.push(word?.fetch(ltr))
        end
      end
      @word2.each_with_index do |ltr| ## checks to see if word #2 conatins vowels
        if word?.include?(ltr)
          answer.push(word?.fetch(ltr))
        end
      end
      if answer.include?(true) ## moves to next step in comparing to make sure letters are the same
    else
      answer.push(false)
    end 
    answer[0]
  end
  
  def word?
    vowels = {"a" => true, "e" => true, "i" => true, "o" => true, "u" => true}
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