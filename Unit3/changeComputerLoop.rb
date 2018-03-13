#Sam Smedinghoff
#3/12/18
#changeComputerLoop.rb

puts "Enter the number of cents you need to give in change: "
cents = gets.strip.to_i

quarters = 0
while cents > 25
  quarters += 1
  cents -= 25
end

dimes = 0
while cents > 10
  dimes += 1
  cents -= 10
end

nickels = 0
while cents > 5
  nickels += 1
  cents -= 5
end

puts "Quarters: #{quarters}"
puts "Dimes #{dimes}"
puts "Nickes: #{nickels}"
puts "Pennies: #{cents}"
