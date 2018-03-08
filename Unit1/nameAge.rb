#Sam Smedinghoff
#3/8/18
#nameAge.rb

puts "Enter your first and last name: "
name = gets.strip
first, last = name.split
puts "Enter your age: "
age = gets.strip.to_i
puts "Your first name has " + first.length.to_s + " letters"
puts "Your last name has " + last.length.to_s + " letters"
puts "Next year you will be " + (age+1).to_s + " years old"
