#!/usr/bin/env ruby
require('pry') 

class Word 
  def initialize(word1, word2)
    @word1 = word1.split('')
    @word2 = word2.split('')
  end 

  def anagram?
    compare = @word1 - @word2
    vowels = ["a", "e", "i", "o", "u"]
    if compare == []
      if @word1.any? { |i| vowels.include?(i)} && @word2.any? { |i| vowels.include?(i)} 
        return "Congrats! You've found an anagram!"
      else
        return "Please enter a real word!!"
      end
    else
     return "One of these things are not like the other, please try again!"
    end
  end
end
  
  # def anagram?
  #   if  (vowels?(@word1) == true) && (vowels?(@word2) == true)
  #     compare = @word1 - @word2
  #     if compare.length == [] #checks to see that word 1 & word2 contain the same letters
  #       answer = "Congratulations! You've found a anagram!"
  #     elsif compare.length > 0 
  #       answer = "One of these things are not like the other, please try again!"
  #     end 
  #   elsif 
  #     answer = "One of these things are not like the other, please try again!"
  #   end
  #   answer
  # end 

#   def vowels?(array)
#     array.each_with_index do |ltr| 
#       if find_vowels.include?(ltr)
#         return true
#       else
#         return false
#       end
#     end
#   end
     
#   def find_vowels
#    vowels = {"a" => true, "e" => true, "i" => true, "o" => true, "u" => true}
#   end
# end 