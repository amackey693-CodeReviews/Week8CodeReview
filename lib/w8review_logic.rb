#!/usr/bin/env ruby
require('pry') 

class Word 
  def initialize(word1, word2)
    @word1 = word1.split('')
    @word2 = word2.split('')
  end 

  def anagram?
    answer = []
    vowels = { true => ["e", "i", "o", "u"]}

    if @word1.include?(vowels)
      puts "yes"
    end
    if @word2.include?(vowels)
      puts "yes"
    end
    binding.pry

    compare = @word1 - @word2
    
    if compare.length == [] #checks to see that word 1 & word2 contain the same letters
      answer = "Congratulations! You've found a anagram!")
    elsif compare.length > 0 
      answer = ("One of these things are not like the other, please try again!")
    end 
  
     @word1.each_with_index do |ltr| ## checks to see if word #1 conatins vowels
        if word?.include?(ltr)
          answer.push(word?.fetch(ltr))
        end
      end
      @word2.each_with_index do |ltr| ## checks to see if word #2 conatins vowels
        if word?.include?(ltr)
          answer.push(word?.fetch(ltr))
        else 
          answer.push(false)
        end
      end
      if answer.include?(true) ## moves to next step in comparing to make sure letters are the same
        
      end 
    else
      answer.push(false)
    end 
    binding.pry
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