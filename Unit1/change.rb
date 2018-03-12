#Sam Smedinghoff
#3/8/18
#change.rb - how many of each coin to I need?

puts "Input a number of cents: "
cents = gets.strip.to_i

puts "Quarters: #{cents/25}"
puts "Dimes: #{(cents%25)/10}"
puts "Nickels: #{((cents%25)%10)/5}"
puts "Pennies: #{(((cents%25)%10)%5)}"
