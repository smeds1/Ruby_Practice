#Sam Smedinghoff
#3/8/18
#change.rb - how many of each coin to I need?

puts "Input a number of cents: "
cents = gets.strip.to_i

puts "Quarters: " + (cents/25).to_s
puts "Dimes: " + ((cents%25)/10).to_s
puts "Nickels: " + (((cents%25)%10)/5).to_s
puts "Pennies: " + (((cents%25)%10)%5).to_s
