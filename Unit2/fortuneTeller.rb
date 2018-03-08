#Sam Smedinghoff
#3/8/18
#fortuneTeller.rb - gives fortune from a color and a number

puts "Pick red or blue: "
color = gets.strip.downcase
puts "Pick a number from 1-4: "
number = gets.strip.to_i

if color == "red" && number == 1
  puts "Fortune: You will live in a big house"
elsif color == "red" && number == 2
  puts "Fortune: You will become rich"
elsif color == "red" && number == 3
  puts "Fortune: You will go to jail"
elsif color == "red" && number == 4
  puts "Fortune: You will be divorced 4 times"
elsif color == "blue" && number == 1
  puts "Fortune: You will win a trip to Hawaii"
elsif color == "blue" && number == 2
  puts "Fortune: You will be eaten by a bear"
elsif color == "blue" && number == 3
  puts "Fortune: You will earn a promotion"
elsif color == "blue" && number == 4
  puts "Fortune: You will develop a rare disease"
else
  puts "Invalid input"
end
