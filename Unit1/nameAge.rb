#Sam Smedinghoff
#3/8/18
#nameAge.rb

puts "Enter your first and last name: "
name = gets.strip
first, last = name.split
puts "Enter your age: "
age = gets.strip.to_i
puts "Your first name has #{first.length} letters"
puts "Your last name has #{last.length} letters"
puts "Next year you will be #{(age+1)} years old"
