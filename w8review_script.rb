#!/usr/bin/ruby

require ("./lib/w8review_logic")

def run_script
  puts "hello! welcome to anagram or antigram, lets get started"
  puts "enter a word or phrase to compare"
  word1 = gets.chomp
  puts "enter another word or phrase to continue"
  word2 = gets.chomp
  words = Word.new(word1, word2)
  puts words.anagram? 
  puts "would you like to compare again? y or n"
  answer = gets.chomp
  if (answer == "y") 
    run_script
  else
    puts "thanks for stopping by!"
  end 
end

run_script

