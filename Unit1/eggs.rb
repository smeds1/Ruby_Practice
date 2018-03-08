#Sam Smedinghoff
#3/8/18
#eggs.rb - can the eggs fit in the cartons?

puts "Enter number of eggs: "
eggs = gets.strip.to_i
puts "Enter number of cartons: "
cartons = gets.strip.to_i
puts cartons*12 >= eggs
