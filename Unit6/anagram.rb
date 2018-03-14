#Sam Smedinghoff
#3/14/18
#anagram.py - prints out all anagrams of a given word

file = open('words.txt')

puts "Enter a word: "
word = gets.strip
lettersInWord = word.split('').sort

puts "The anagrams of #{word} are: "
file.each_line do |line|
  line = line.strip
  letters = line.split('').sort
  if lettersInWord == letters && line != word
    puts line
  end
end

puts
file.close
