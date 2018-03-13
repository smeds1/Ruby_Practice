#Sam Smedinghoff
#3/13/18
#longestWord.rb

puts "Enter some words: "
words = gets.strip.split

longest = ""
words.each do |word|
  if word.length > longest.length
    longest = word
  end
end

puts "The longest word is #{longest}"
