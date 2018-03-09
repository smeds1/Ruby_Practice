#Sam Smedinghoff
#3/9/18
#favorites.rb

puts "Enter your favorite word: "
word = gets.strip
puts "Enter your favorite number: "
num = gets.strip.to_i

(0..num).each do |i|
  puts word
