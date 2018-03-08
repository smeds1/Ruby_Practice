#Sam Smedinghoff
#3/8/18
#stringAnalysis.rb

puts "Enter a sentence: "
text = gets.strip

spaces = text.count(' ')
words = spaces + 1
characters = text.length
letters = characters - spaces

puts "Your sentence has " + words.to_s + " words and " + characters.to_s + " characters and " + letters.to_s + " letters"

puts "Enter a character to search for: "
char = gets.strip.downcase
puts "Enter your sentence has " + text.downcase.count(char).to_s + " of the character " + char

puts "Enter a word to search for: "
word = gets.strip.downcase
puts "Enter your sentence has " + text.downcase.scan(word).length.to_s + " of the word " + word
