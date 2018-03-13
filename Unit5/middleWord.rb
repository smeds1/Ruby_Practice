#Sam Smedinghoff
#3/13/18
#middleWord.rb

puts "Enter some words: "
words = gets.strip.split

n = words.length
if n%2 == 0
  puts "#{words[n/2-1]} #{words[n/2]}"
else
  puts words[n/2]
end
